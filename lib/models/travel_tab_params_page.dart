import 'package:json_annotation/json_annotation.dart';



part 'travel_tab_params_page.g.dart';

@JsonSerializable()
class TravelTabParamsPage {
      TravelTabParamsPage();

  int pageIndex;
  int pageSize;
  int sortType;
  int sortDirection;

  factory TravelTabParamsPage.fromJson(Map<String,dynamic> json) => _$TravelTabParamsPageFromJson(json);
  Map<String, dynamic> toJson() => _$TravelTabParamsPageToJson(this);
}