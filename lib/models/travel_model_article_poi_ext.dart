import 'package:json_annotation/json_annotation.dart';



part 'travel_model_article_poi_ext.g.dart';

@JsonSerializable()
class TravelModelArticlePoiExt {
      TravelModelArticlePoiExt();

  String h5Url;
  String appUrl;

  factory TravelModelArticlePoiExt.fromJson(Map<String,dynamic> json) => _$TravelModelArticlePoiExtFromJson(json);
  Map<String, dynamic> toJson() => _$TravelModelArticlePoiExtToJson(this);
}