// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_tab_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelTabItem _$TravelTabItemFromJson(Map<String, dynamic> json) {
  return TravelTabItem()
    ..labelName = json['labelName'] as String
    ..groupChannelCode = json['groupChannelCode'] as String;
}

Map<String, dynamic> _$TravelTabItemToJson(TravelTabItem instance) =>
    <String, dynamic>{
      'labelName': instance.labelName,
      'groupChannelCode': instance.groupChannelCode,
    };
