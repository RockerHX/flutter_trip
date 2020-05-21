import 'package:json_annotation/json_annotation.dart';

import 'travel_tab_params.dart';
import 'travel_tab_model.dart';

part 'travel_tab_Item.g.dart';

@JsonSerializable()
class TravelTabItem {
      TravelTabItem();

  String url;
  TravelTabParams params;
  List<TravelTabModel> tabs;

  factory TravelTabItem.fromJson(Map<String,dynamic> json) => _$TravelTabItemFromJson(json);
  Map<String, dynamic> toJson() => _$TravelTabItemToJson(this);
}