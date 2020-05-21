import 'package:json_annotation/json_annotation.dart';



part 'travel_tab_item.g.dart';

@JsonSerializable()
class TravelTabItem {
      TravelTabItem();

  String labelName;
  String groupChannelCode;

  factory TravelTabItem.fromJson(Map<String,dynamic> json) => _$TravelTabItemFromJson(json);
  Map<String, dynamic> toJson() => _$TravelTabItemToJson(this);
}