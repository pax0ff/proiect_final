// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Movie$Impl _$$Movie$ImplFromJson(Map<String, dynamic> json) => _$Movie$Impl(
      id: json['id'] as int,
      title: json['title'] as String,
      year: json['year'] as int,
      rating: (json['rating'] as num).toDouble(),
      genres: (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const <String>[],
      summary: json['summary'] as String,
      mediumImage: json['medium_cover_image'] as String,
      largeImage: json['large_cover_image'] as String,
      torrents:
          (json['torrents'] as List<dynamic>?)?.map((e) => Torrent.fromJson(e as Map<String, dynamic>)).toList() ??
              const <Torrent>[],
    );

Map<String, dynamic> _$$Movie$ImplToJson(_$Movie$Impl instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'year': instance.year,
      'rating': instance.rating,
      'genres': instance.genres,
      'summary': instance.summary,
      'medium_cover_image': instance.mediumImage,
      'large_cover_image': instance.largeImage,
      'torrents': instance.torrents,
    };
