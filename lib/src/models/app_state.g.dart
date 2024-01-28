// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$Impl _$$AppState$ImplFromJson(Map<String, dynamic> json) => _$AppState$Impl(
      user: json['user'] == null ? null : AppUser.fromJson(json['user'] as Map<String, dynamic>),
      selectedMovie:
          json['selectedMovie'] == null ? null : Movie.fromJson(json['selectedMovie'] as Map<String, dynamic>),
      reviews: (json['reviews'] as List<dynamic>?)?.map((e) => Review.fromJson(e as Map<String, dynamic>)).toList() ??
          const <Review>[],
      movies: (json['movies'] as List<dynamic>?)?.map((e) => Movie.fromJson(e as Map<String, dynamic>)).toList() ??
          const <Movie>[],
      users: (json['users'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, AppUser.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, AppUser>{},
      isLoading: json['isLoading'] as bool? ?? false,
      page: json['page'] as int? ?? 1,
      query: json['query'] as String? ?? '',
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) => <String, dynamic>{
      'user': instance.user,
      'selectedMovie': instance.selectedMovie,
      'reviews': instance.reviews,
      'movies': instance.movies,
      'users': instance.users,
      'isLoading': instance.isLoading,
      'page': instance.page,
      'query': instance.query,
    };
