// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListMovies {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String genre) $default, {
    required TResult Function(List<Movie> movies) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String genre)? $default, {
    TResult? Function(List<Movie> movies)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String genre)? $default, {
    TResult Function(List<Movie> movies)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ListMoviesStart value) $default, {
    required TResult Function(ListMoviesSuccessful value) successful,
    required TResult Function(ListMoviesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ListMoviesStart value)? $default, {
    TResult? Function(ListMoviesSuccessful value)? successful,
    TResult? Function(ListMoviesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ListMoviesStart value)? $default, {
    TResult Function(ListMoviesSuccessful value)? successful,
    TResult Function(ListMoviesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListMoviesCopyWith<$Res> {
  factory $ListMoviesCopyWith(ListMovies value, $Res Function(ListMovies) then) =
      _$ListMoviesCopyWithImpl<$Res, ListMovies>;
}

/// @nodoc
class _$ListMoviesCopyWithImpl<$Res, $Val extends ListMovies> implements $ListMoviesCopyWith<$Res> {
  _$ListMoviesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ListMoviesStartImplCopyWith<$Res> {
  factory _$$ListMoviesStartImplCopyWith(_$ListMoviesStartImpl value, $Res Function(_$ListMoviesStartImpl) then) =
      __$$ListMoviesStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String genre});
}

/// @nodoc
class __$$ListMoviesStartImplCopyWithImpl<$Res> extends _$ListMoviesCopyWithImpl<$Res, _$ListMoviesStartImpl>
    implements _$$ListMoviesStartImplCopyWith<$Res> {
  __$$ListMoviesStartImplCopyWithImpl(_$ListMoviesStartImpl _value, $Res Function(_$ListMoviesStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = null,
  }) {
    return _then(_$ListMoviesStartImpl(
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListMoviesStartImpl implements ListMoviesStart {
  const _$ListMoviesStartImpl({this.genre = ''});

  @override
  @JsonKey()
  final String genre;

  @override
  String toString() {
    return 'ListMovies(genre: $genre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListMoviesStartImpl &&
            (identical(other.genre, genre) || other.genre == genre));
  }

  @override
  int get hashCode => Object.hash(runtimeType, genre);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListMoviesStartImplCopyWith<_$ListMoviesStartImpl> get copyWith =>
      __$$ListMoviesStartImplCopyWithImpl<_$ListMoviesStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String genre) $default, {
    required TResult Function(List<Movie> movies) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(genre);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String genre)? $default, {
    TResult? Function(List<Movie> movies)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(genre);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String genre)? $default, {
    TResult Function(List<Movie> movies)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(genre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ListMoviesStart value) $default, {
    required TResult Function(ListMoviesSuccessful value) successful,
    required TResult Function(ListMoviesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ListMoviesStart value)? $default, {
    TResult? Function(ListMoviesSuccessful value)? successful,
    TResult? Function(ListMoviesError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ListMoviesStart value)? $default, {
    TResult Function(ListMoviesSuccessful value)? successful,
    TResult Function(ListMoviesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ListMoviesStart implements ListMovies {
  const factory ListMoviesStart({final String genre}) = _$ListMoviesStartImpl;

  String get genre;
  @JsonKey(ignore: true)
  _$$ListMoviesStartImplCopyWith<_$ListMoviesStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListMoviesSuccessfulImplCopyWith<$Res> {
  factory _$$ListMoviesSuccessfulImplCopyWith(
          _$ListMoviesSuccessfulImpl value, $Res Function(_$ListMoviesSuccessfulImpl) then) =
      __$$ListMoviesSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Movie> movies});
}

/// @nodoc
class __$$ListMoviesSuccessfulImplCopyWithImpl<$Res> extends _$ListMoviesCopyWithImpl<$Res, _$ListMoviesSuccessfulImpl>
    implements _$$ListMoviesSuccessfulImplCopyWith<$Res> {
  __$$ListMoviesSuccessfulImplCopyWithImpl(
      _$ListMoviesSuccessfulImpl _value, $Res Function(_$ListMoviesSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_$ListMoviesSuccessfulImpl(
      null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$ListMoviesSuccessfulImpl implements ListMoviesSuccessful {
  const _$ListMoviesSuccessfulImpl(final List<Movie> movies) : _movies = movies;

  final List<Movie> _movies;
  @override
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'ListMovies.successful(movies: $movies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListMoviesSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListMoviesSuccessfulImplCopyWith<_$ListMoviesSuccessfulImpl> get copyWith =>
      __$$ListMoviesSuccessfulImplCopyWithImpl<_$ListMoviesSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String genre) $default, {
    required TResult Function(List<Movie> movies) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String genre)? $default, {
    TResult? Function(List<Movie> movies)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String genre)? $default, {
    TResult Function(List<Movie> movies)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ListMoviesStart value) $default, {
    required TResult Function(ListMoviesSuccessful value) successful,
    required TResult Function(ListMoviesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ListMoviesStart value)? $default, {
    TResult? Function(ListMoviesSuccessful value)? successful,
    TResult? Function(ListMoviesError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ListMoviesStart value)? $default, {
    TResult Function(ListMoviesSuccessful value)? successful,
    TResult Function(ListMoviesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ListMoviesSuccessful implements ListMovies {
  const factory ListMoviesSuccessful(final List<Movie> movies) = _$ListMoviesSuccessfulImpl;

  List<Movie> get movies;
  @JsonKey(ignore: true)
  _$$ListMoviesSuccessfulImplCopyWith<_$ListMoviesSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListMoviesErrorImplCopyWith<$Res> {
  factory _$$ListMoviesErrorImplCopyWith(_$ListMoviesErrorImpl value, $Res Function(_$ListMoviesErrorImpl) then) =
      __$$ListMoviesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$ListMoviesErrorImplCopyWithImpl<$Res> extends _$ListMoviesCopyWithImpl<$Res, _$ListMoviesErrorImpl>
    implements _$$ListMoviesErrorImplCopyWith<$Res> {
  __$$ListMoviesErrorImplCopyWithImpl(_$ListMoviesErrorImpl _value, $Res Function(_$ListMoviesErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$ListMoviesErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ListMoviesErrorImpl implements ListMoviesError {
  const _$ListMoviesErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ListMovies.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListMoviesErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListMoviesErrorImplCopyWith<_$ListMoviesErrorImpl> get copyWith =>
      __$$ListMoviesErrorImplCopyWithImpl<_$ListMoviesErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String genre) $default, {
    required TResult Function(List<Movie> movies) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String genre)? $default, {
    TResult? Function(List<Movie> movies)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String genre)? $default, {
    TResult Function(List<Movie> movies)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ListMoviesStart value) $default, {
    required TResult Function(ListMoviesSuccessful value) successful,
    required TResult Function(ListMoviesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ListMoviesStart value)? $default, {
    TResult? Function(ListMoviesSuccessful value)? successful,
    TResult? Function(ListMoviesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ListMoviesStart value)? $default, {
    TResult Function(ListMoviesSuccessful value)? successful,
    TResult Function(ListMoviesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListMoviesError implements ListMovies, ErrorAction {
  const factory ListMoviesError(final Object error, final StackTrace stackTrace) = _$ListMoviesErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$ListMoviesErrorImplCopyWith<_$ListMoviesErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
