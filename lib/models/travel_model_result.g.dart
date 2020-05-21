// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_model_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelModelResult _$TravelModelResultFromJson(Map<String, dynamic> json) {
  return TravelModelResult()
    ..totalCount = json['totalCount'] as int
    ..resultList = (json['resultList'] as List)
        ?.map((e) =>
            e == null ? null : TravelModel.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TravelModelResultToJson(TravelModelResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'resultList': instance.resultList,
    };
