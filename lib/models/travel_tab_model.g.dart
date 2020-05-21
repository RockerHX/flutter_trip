// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_tab_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelTabModel _$TravelTabModelFromJson(Map<String, dynamic> json) {
  return TravelTabModel()
    ..url = json['url'] as String
    ..params = json['params'] == null
        ? null
        : TravelTabParams.fromJson(json['params'] as Map<String, dynamic>)
    ..tabs = (json['tabs'] as List)
        ?.map((e) => e == null
            ? null
            : TravelTabItem.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TravelTabModelToJson(TravelTabModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'params': instance.params,
      'tabs': instance.tabs,
    };
