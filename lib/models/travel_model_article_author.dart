import 'package:json_annotation/json_annotation.dart';

import 'travel_model_article_author_cover.dart';

part 'travel_model_article_author.g.dart';

@JsonSerializable()
class TravelModelArticleAuthor {
      TravelModelArticleAuthor();

  int authorId;
  String nickName;
  String clientAuth;
  String jumpUrl;
  TravelModelArticleAuthorCover coverImage;
  int identityType;
  String tag;

  factory TravelModelArticleAuthor.fromJson(Map<String,dynamic> json) => _$TravelModelArticleAuthorFromJson(json);
  Map<String, dynamic> toJson() => _$TravelModelArticleAuthorToJson(this);
}