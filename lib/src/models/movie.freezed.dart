// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return Movie$.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'medium_cover_image')
  String get mediumImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_cover_image')
  String get largeImage => throw _privateConstructorUsedError;
  List<Torrent> get torrents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) = _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {int id,
      String title,
      int year,
      double rating,
      List<String> genres,
      String summary,
      @JsonKey(name: 'medium_cover_image') String mediumImage,
      @JsonKey(name: 'large_cover_image') String largeImage,
      List<Torrent> torrents});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? year = null,
    Object? rating = null,
    Object? genres = null,
    Object? summary = null,
    Object? mediumImage = null,
    Object? largeImage = null,
    Object? torrents = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      mediumImage: null == mediumImage
          ? _value.mediumImage
          : mediumImage // ignore: cast_nullable_to_non_nullable
              as String,
      largeImage: null == largeImage
          ? _value.largeImage
          : largeImage // ignore: cast_nullable_to_non_nullable
              as String,
      torrents: null == torrents
          ? _value.torrents
          : torrents // ignore: cast_nullable_to_non_nullable
              as List<Torrent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Movie$ImplCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$Movie$ImplCopyWith(_$Movie$Impl value, $Res Function(_$Movie$Impl) then) =
      __$$Movie$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      int year,
      double rating,
      List<String> genres,
      String summary,
      @JsonKey(name: 'medium_cover_image') String mediumImage,
      @JsonKey(name: 'large_cover_image') String largeImage,
      List<Torrent> torrents});
}

/// @nodoc
class __$$Movie$ImplCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res, _$Movie$Impl>
    implements _$$Movie$ImplCopyWith<$Res> {
  __$$Movie$ImplCopyWithImpl(_$Movie$Impl _value, $Res Function(_$Movie$Impl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? year = null,
    Object? rating = null,
    Object? genres = null,
    Object? summary = null,
    Object? mediumImage = null,
    Object? largeImage = null,
    Object? torrents = null,
  }) {
    return _then(_$Movie$Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      mediumImage: null == mediumImage
          ? _value.mediumImage
          : mediumImage // ignore: cast_nullable_to_non_nullable
              as String,
      largeImage: null == largeImage
          ? _value.largeImage
          : largeImage // ignore: cast_nullable_to_non_nullable
              as String,
      torrents: null == torrents
          ? _value._torrents
          : torrents // ignore: cast_nullable_to_non_nullable
              as List<Torrent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Movie$Impl implements Movie$ {
  const _$Movie$Impl(
      {required this.id,
      required this.title,
      required this.year,
      required this.rating,
      final List<String> genres = const <String>[],
      required this.summary,
      @JsonKey(name: 'medium_cover_image') required this.mediumImage,
      @JsonKey(name: 'large_cover_image') required this.largeImage,
      final List<Torrent> torrents = const <Torrent>[]})
      : _genres = genres,
        _torrents = torrents;

  factory _$Movie$Impl.fromJson(Map<String, dynamic> json) => _$$Movie$ImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final int year;
  @override
  final double rating;
  final List<String> _genres;
  @override
  @JsonKey()
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final String summary;
  @override
  @JsonKey(name: 'medium_cover_image')
  final String mediumImage;
  @override
  @JsonKey(name: 'large_cover_image')
  final String largeImage;
  final List<Torrent> _torrents;
  @override
  @JsonKey()
  List<Torrent> get torrents {
    if (_torrents is EqualUnmodifiableListView) return _torrents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_torrents);
  }

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, year: $year, rating: $rating, genres: $genres, summary: $summary, mediumImage: $mediumImage, largeImage: $largeImage, torrents: $torrents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Movie$Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.mediumImage, mediumImage) || other.mediumImage == mediumImage) &&
            (identical(other.largeImage, largeImage) || other.largeImage == largeImage) &&
            const DeepCollectionEquality().equals(other._torrents, _torrents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, year, rating, const DeepCollectionEquality().hash(_genres),
      summary, mediumImage, largeImage, const DeepCollectionEquality().hash(_torrents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Movie$ImplCopyWith<_$Movie$Impl> get copyWith => __$$Movie$ImplCopyWithImpl<_$Movie$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Movie$ImplToJson(
      this,
    );
  }
}

abstract class Movie$ implements Movie {
  const factory Movie$(
      {required final int id,
      required final String title,
      required final int year,
      required final double rating,
      final List<String> genres,
      required final String summary,
      @JsonKey(name: 'medium_cover_image') required final String mediumImage,
      @JsonKey(name: 'large_cover_image') required final String largeImage,
      final List<Torrent> torrents}) = _$Movie$Impl;

  factory Movie$.fromJson(Map<String, dynamic> json) = _$Movie$Impl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  int get year;
  @override
  double get rating;
  @override
  List<String> get genres;
  @override
  String get summary;
  @override
  @JsonKey(name: 'medium_cover_image')
  String get mediumImage;
  @override
  @JsonKey(name: 'large_cover_image')
  String get largeImage;
  @override
  List<Torrent> get torrents;
  @override
  @JsonKey(ignore: true)
  _$$Movie$ImplCopyWith<_$Movie$Impl> get copyWith => throw _privateConstructorUsedError;
}
