// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_tab_Item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelTabItem _$TravelTabItemFromJson(Map<String, dynamic> json) {
  return TravelTabItem()
    ..url = json['url'] as String
    ..params = json['params'] == null
        ? null
        : TravelTabParams.fromJson(json['params'] as Map<String, dynamic>)
    ..tabs = (json['tabs'] as List)
        ?.map((e) => e == null
            ? null
            : TravelTabModel.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TravelTabItemToJson(TravelTabItem instance) =>
    <String, dynamic>{
      'url': instance.url,
      'params': instance.params,
      'tabs': instance.tabs,
    };
