// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_tab_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelTabParams _$TravelTabParamsFromJson(Map<String, dynamic> json) {
  return TravelTabParams()
    ..districtId = json['districtId'] as int
    ..groupChannelCode = json['groupChannelCode'] as String
    ..type = json['type']
    ..lat = json['lat'] as int
    ..lon = json['lon'] as int
    ..locatedDistrictId = json['locatedDistrictId'] as int
    ..pagePara = json['pagePara'] == null
        ? null
        : TravelTabParamsPage.fromJson(json['pagePara'] as Map<String, dynamic>)
    ..imageCutType = json['imageCutType'] as int
    ..contentType = json['contentType'] as String;
}

Map<String, dynamic> _$TravelTabParamsToJson(TravelTabParams instance) =>
    <String, dynamic>{
      'districtId': instance.districtId,
      'groupChannelCode': instance.groupChannelCode,
      'type': instance.type,
      'lat': instance.lat,
      'lon': instance.lon,
      'locatedDistrictId': instance.locatedDistrictId,
      'pagePara': instance.pagePara,
      'imageCutType': instance.imageCutType,
      'contentType': instance.contentType,
    };
