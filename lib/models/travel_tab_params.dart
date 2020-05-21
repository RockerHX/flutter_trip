import 'package:json_annotation/json_annotation.dart';

import 'travel_tab_params_page.dart';

part 'travel_tab_params.g.dart';

@JsonSerializable()
class TravelTabParams {
      TravelTabParams();

  int districtId;
  String groupChannelCode;
  dynamic type;
  int lat;
  int lon;
  int locatedDistrictId;
  TravelTabParamsPage pagePara;
  int imageCutType;
  String contentType;

  factory TravelTabParams.fromJson(Map<String,dynamic> json) => _$TravelTabParamsFromJson(json);
  Map<String, dynamic> toJson() => _$TravelTabParamsToJson(this);
}