import 'package:json_annotation/json_annotation.dart';



part 'travel_tab_model.g.dart';

@JsonSerializable()
class TravelTabModel {
      TravelTabModel();

  String labelName;
  String groupChannelCode;

  factory TravelTabModel.fromJson(Map<String,dynamic> json) => _$TravelTabModelFromJson(json);
  Map<String, dynamic> toJson() => _$TravelTabModelToJson(this);
}