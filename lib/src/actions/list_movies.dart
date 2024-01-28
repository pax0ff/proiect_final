import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/movie.dart';
import 'app_action.dart';

part 'list_movies.freezed.dart';

@freezed
class ListMovies with _$ListMovies implements AppAction {
  const factory ListMovies({
    @Default('') String genre,
  }) = ListMoviesStart;

  const factory ListMovies.successful(List<Movie> movies) = ListMoviesSuccessful;

  @Implements<ErrorAction>()
  const factory ListMovies.error(Object error, StackTrace stackTrace) = ListMoviesError;
}
