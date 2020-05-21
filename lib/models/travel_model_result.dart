import 'package:json_annotation/json_annotation.dart';

import 'travel_model.dart';

part 'travel_model_result.g.dart';

@JsonSerializable()
class TravelModelResult {
      TravelModelResult();

  int totalCount;
  List<TravelModel> resultList;

  factory TravelModelResult.fromJson(Map<String,dynamic> json) => _$TravelModelResultFromJson(json);
  Map<String, dynamic> toJson() => _$TravelModelResultToJson(this);
}