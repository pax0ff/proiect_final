// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  AppUser? get user => throw _privateConstructorUsedError;
  Movie? get selectedMovie => throw _privateConstructorUsedError;
  List<Review> get reviews => throw _privateConstructorUsedError;
  List<Movie> get movies => throw _privateConstructorUsedError;
  Map<String, AppUser> get users => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) = _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {AppUser? user,
      Movie? selectedMovie,
      List<Review> reviews,
      List<Movie> movies,
      Map<String, AppUser> users,
      bool isLoading,
      int page,
      String query});

  $AppUserCopyWith<$Res>? get user;
  $MovieCopyWith<$Res>? get selectedMovie;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? selectedMovie = freezed,
    Object? reviews = null,
    Object? movies = null,
    Object? users = null,
    Object? isLoading = null,
    Object? page = null,
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      selectedMovie: freezed == selectedMovie
          ? _value.selectedMovie
          : selectedMovie // ignore: cast_nullable_to_non_nullable
              as Movie?,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Map<String, AppUser>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res>? get selectedMovie {
    if (_value.selectedMovie == null) {
      return null;
    }

    return $MovieCopyWith<$Res>(_value.selectedMovie!, (value) {
      return _then(_value.copyWith(selectedMovie: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppState$ImplCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$AppState$ImplCopyWith(_$AppState$Impl value, $Res Function(_$AppState$Impl) then) =
      __$$AppState$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppUser? user,
      Movie? selectedMovie,
      List<Review> reviews,
      List<Movie> movies,
      Map<String, AppUser> users,
      bool isLoading,
      int page,
      String query});

  @override
  $AppUserCopyWith<$Res>? get user;
  @override
  $MovieCopyWith<$Res>? get selectedMovie;
}

/// @nodoc
class __$$AppState$ImplCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res, _$AppState$Impl>
    implements _$$AppState$ImplCopyWith<$Res> {
  __$$AppState$ImplCopyWithImpl(_$AppState$Impl _value, $Res Function(_$AppState$Impl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? selectedMovie = freezed,
    Object? reviews = null,
    Object? movies = null,
    Object? users = null,
    Object? isLoading = null,
    Object? page = null,
    Object? query = null,
  }) {
    return _then(_$AppState$Impl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      selectedMovie: freezed == selectedMovie
          ? _value.selectedMovie
          : selectedMovie // ignore: cast_nullable_to_non_nullable
              as Movie?,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as Map<String, AppUser>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$Impl implements AppState$ {
  const _$AppState$Impl(
      {this.user,
      this.selectedMovie,
      final List<Review> reviews = const <Review>[],
      final List<Movie> movies = const <Movie>[],
      final Map<String, AppUser> users = const <String, AppUser>{},
      this.isLoading = false,
      this.page = 1,
      this.query = ''})
      : _reviews = reviews,
        _movies = movies,
        _users = users;

  factory _$AppState$Impl.fromJson(Map<String, dynamic> json) => _$$AppState$ImplFromJson(json);

  @override
  final AppUser? user;
  @override
  final Movie? selectedMovie;
  final List<Review> _reviews;
  @override
  @JsonKey()
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  final List<Movie> _movies;
  @override
  @JsonKey()
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  final Map<String, AppUser> _users;
  @override
  @JsonKey()
  Map<String, AppUser> get users {
    if (_users is EqualUnmodifiableMapView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_users);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final String query;

  @override
  String toString() {
    return 'AppState(user: $user, selectedMovie: $selectedMovie, reviews: $reviews, movies: $movies, users: $users, isLoading: $isLoading, page: $page, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$Impl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.selectedMovie, selectedMovie) || other.selectedMovie == selectedMovie) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.isLoading, isLoading) || other.isLoading == isLoading) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      selectedMovie,
      const DeepCollectionEquality().hash(_reviews),
      const DeepCollectionEquality().hash(_movies),
      const DeepCollectionEquality().hash(_users),
      isLoading,
      page,
      query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith =>
      __$$AppState$ImplCopyWithImpl<_$AppState$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ImplToJson(
      this,
    );
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final AppUser? user,
      final Movie? selectedMovie,
      final List<Review> reviews,
      final List<Movie> movies,
      final Map<String, AppUser> users,
      final bool isLoading,
      final int page,
      final String query}) = _$AppState$Impl;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$Impl.fromJson;

  @override
  AppUser? get user;
  @override
  Movie? get selectedMovie;
  @override
  List<Review> get reviews;
  @override
  List<Movie> get movies;
  @override
  Map<String, AppUser> get users;
  @override
  bool get isLoading;
  @override
  int get page;
  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith => throw _privateConstructorUsedError;
}
