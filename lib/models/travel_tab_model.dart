import 'package:json_annotation/json_annotation.dart';

import 'travel_tab_params.dart';
import 'travel_tab_item.dart';

part 'travel_tab_model.g.dart';

@JsonSerializable()
class TravelTabModel {
      TravelTabModel();

  String url;
  TravelTabParams params;
  List<TravelTabItem> tabs;

  factory TravelTabModel.fromJson(Map<String,dynamic> json) => _$TravelTabModelFromJson(json);
  Map<String, dynamic> toJson() => _$TravelTabModelToJson(this);
}