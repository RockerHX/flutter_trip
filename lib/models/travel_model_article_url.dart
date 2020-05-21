import 'package:json_annotation/json_annotation.dart';



part 'travel_model_article_url.g.dart';

@JsonSerializable()
class TravelModelArticleUrl {
      TravelModelArticleUrl();

  String version;
  String appUrl;
  String h5Url;
  String wxUrl;

  factory TravelModelArticleUrl.fromJson(Map<String,dynamic> json) => _$TravelModelArticleUrlFromJson(json);
  Map<String, dynamic> toJson() => _$TravelModelArticleUrlToJson(this);
}