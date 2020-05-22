import 'package:json_annotation/json_annotation.dart';

part 'travel_model_article_author_cover.g.dart';

@JsonSerializable()
class TravelModelArticleAuthorCover {
  TravelModelArticleAuthorCover();

  String dynamicUrl;
  String originalUrl;

  factory TravelModelArticleAuthorCover.fromJson(Map<String, dynamic> json) =>
      _$TravelModelArticleAuthorCoverFromJson(json);
  Map<String, dynamic> toJson() => _$TravelModelArticleAuthorCoverToJson(this);
}
