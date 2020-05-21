import 'package:json_annotation/json_annotation.dart';

import 'travel_model_article.dart';

part 'travel_model.g.dart';

@JsonSerializable()
class TravelModel {
      TravelModel();

  int type;
  TravelModelArticle article;

  factory TravelModel.fromJson(Map<String,dynamic> json) => _$TravelModelFromJson(json);
  Map<String, dynamic> toJson() => _$TravelModelToJson(this);
}