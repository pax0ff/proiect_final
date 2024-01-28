import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/movie.dart';

import 'app_action.dart';

part 'set.freezed.dart';

@freezed
class SetQuery with _$SetQuery implements AppAction {
  const factory SetQuery(String query) = SetQuery$;
}

@freezed
class SetSelectedMovie with _$SetSelectedMovie implements AppAction {
  const factory SetSelectedMovie(Movie movie) = SetSelectedMovie$;
}
