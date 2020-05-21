import 'package:json_annotation/json_annotation.dart';

import 'travel_model_article_poi_ext.dart';

part 'travel_model_article_poi.g.dart';

@JsonSerializable()
class TravelModelArticlePoi {
      TravelModelArticlePoi();

  int poiType;
  int poiId;
  String poiName;
  int businessId;
  int districtId;
  TravelModelArticlePoiExt poiExt;
  int source;
  int isMain;
  bool isInChina;
  String countryName;

  factory TravelModelArticlePoi.fromJson(Map<String,dynamic> json) => _$TravelModelArticlePoiFromJson(json);
  Map<String, dynamic> toJson() => _$TravelModelArticlePoiToJson(this);
}