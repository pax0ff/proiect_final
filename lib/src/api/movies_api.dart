import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart';

import '../models/movie.dart';
import '../models/review.dart';

class MoviesApi {
  MoviesApi(this._client, this._firestore);

  final Client _client;
  final FirebaseFirestore _firestore;

  Future<List<Movie>> listMovies(int page, {String query = '', String genre = ''}) async {
    final Uri uri = Uri.parse('https://yts.mx/api/v2/list_movies.json');
    final Response response = await _client.get(
      uri.replace(
        queryParameters: <String, String>{
          'page': '$page',
          if (query.isNotEmpty) 'query_term': query,
          if (genre.isNotEmpty) 'genre': genre,
        },
      ),
    );

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
    final Map<String, dynamic> data = body['data'] as Map<String, dynamic>;
    final List<dynamic> movies = data['movies'] == null ? <dynamic>[] : data['movies'] as List<dynamic>;
    return movies //
        .map((dynamic item) => Movie.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  Future<List<Review>> getReviews(int movieId) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore
        .collection('movies/$movieId/reviews') //
        .orderBy('createdAt', descending: true)
        .get();

    return snapshot.docs //
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Review.fromJson(doc.data()))
        .toList();
  }

  Future<Review> createReview({
    required int movieId,
    required String text,
    required String uid,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('movies/$movieId/reviews').doc();

    final Review review = Review(
      id: ref.id,
      text: text,
      uid: uid,
      createdAt: DateTime.now(),
    );

    await ref.set(review.toJson());

    return review;
  }
}
