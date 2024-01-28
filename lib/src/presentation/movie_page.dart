import 'package:flutter/material.dart';

import '../actions/create_review.dart';
import '../models/app_user.dart';
import '../models/movie.dart';
import '../models/review.dart';
import 'containers/reviews_container.dart';
import 'containers/selected_movie_container.dart';
import 'containers/users_container.dart';
import 'extensions.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectedMovieContainer(
      builder: (BuildContext context, Movie movie) {
        return Scaffold(
          appBar: AppBar(
            title: Text(movie.title),
          ),
          body: ReviewsContainer(
            builder: (BuildContext context, List<Review> reviews) {
              return UsersContainer(
                builder: (BuildContext context, Map<String, AppUser> users) {
                  return CustomScrollView(
                    slivers: <Widget>[
                      SliverToBoxAdapter(
                        child: Column(
                          children: <Widget>[
                            Center(
                              child: SizedBox(
                                height: 300,
                                child: AspectRatio(
                                  aspectRatio: 0.69,
                                  child: Image.network(
                                    movie.largeImage,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Text(
                              '${movie.rating}',
                              style: const TextStyle(
                                color: Colors.amber,
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Text('${movie.year}'),
                          ],
                        ),
                      ),
                      const SliverPadding(
                        padding: EdgeInsets.all(16.0),
                        sliver: SliverToBoxAdapter(
                          child: Text(
                            'Reviews',
                            style: TextStyle(fontSize: 32.0),
                          ),
                        ),
                      ),
                      if (reviews.isNotEmpty)
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              final Review review = reviews[index];
                              final AppUser? user = users[review.uid];

                              return ListTile(
                                title: Text(review.text),
                                subtitle: Text(<Object>[
                                  if (user != null) user.displayName,
                                  review.createdAt,
                                ].join('\n')),
                              );
                            },
                            childCount: reviews.length,
                          ),
                        )
                      else
                        const SliverFillRemaining(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Center(
                              child: Text(
                                'Be the first to leave a review',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ),
                          ),
                        )
                    ],
                  );
                },
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              final TextEditingController controller = TextEditingController();
              showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Add your review'),
                    content: TextField(
                      controller: controller,
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final String text = controller.text.trim();
                          if (text.isNotEmpty) {
                            context.dispatch(CreateReview(text));
                          }
                          Navigator.pop(context);
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Icon(Icons.add_comment),
          ),
        );
      },
    );
  }
}
