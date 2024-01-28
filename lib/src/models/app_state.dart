import 'package:freezed_annotation/freezed_annotation.dart';

import 'app_user.dart';
import 'movie.dart';
import 'review.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    Movie? selectedMovie,
    @Default(<Review>[]) List<Review> reviews,
    @Default(<Movie>[]) List<Movie> movies,
    @Default(<String, AppUser>{}) Map<String, AppUser> users,
    @Default(false) bool isLoading,
    @Default(1) int page,
    @Default('') String query,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
