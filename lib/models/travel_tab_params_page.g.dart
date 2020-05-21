// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_tab_params_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelTabParamsPage _$TravelTabParamsPageFromJson(Map<String, dynamic> json) {
  return TravelTabParamsPage()
    ..pageIndex = json['pageIndex'] as int
    ..pageSize = json['pageSize'] as int
    ..sortType = json['sortType'] as int
    ..sortDirection = json['sortDirection'] as int;
}

Map<String, dynamic> _$TravelTabParamsPageToJson(
        TravelTabParamsPage instance) =>
    <String, dynamic>{
      'pageIndex': instance.pageIndex,
      'pageSize': instance.pageSize,
      'sortType': instance.sortType,
      'sortDirection': instance.sortDirection,
    };
