import 'package:freezed_annotation/freezed_annotation.dart';

import 'torrent.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required String title,
    required int year,
    required double rating,
    @Default(<String>[]) List<String> genres,
    required String summary,
    @JsonKey(name: 'medium_cover_image') required String mediumImage,
    @JsonKey(name: 'large_cover_image') required String largeImage,
    @Default(<Torrent>[]) List<Torrent> torrents,
  }) = Movie$;

  factory Movie.fromJson(Map<dynamic, dynamic> json) => _$MovieFromJson(Map<String, dynamic>.from(json));
}
