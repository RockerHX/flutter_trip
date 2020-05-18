// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchItem _$SearchItemFromJson(Map<String, dynamic> json) {
  return SearchItem()
    ..code = json['code'] as String
    ..word = json['word'] as String
    ..type = json['type'] as String
    ..districtname = json['districtname'] as String
    ..zonename = json['zonename'] as String
    ..star = json['star'] as String
    ..price = json['price'] as String
    ..url = json['url'] as String;
}

Map<String, dynamic> _$SearchItemToJson(SearchItem instance) =>
    <String, dynamic>{
      'code': instance.code,
      'word': instance.word,
      'type': instance.type,
      'districtname': instance.districtname,
      'zonename': instance.zonename,
      'star': instance.star,
      'price': instance.price,
      'url': instance.url,
    };
