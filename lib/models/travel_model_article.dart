import 'package:json_annotation/json_annotation.dart';

import 'travel_model_article_author.dart';
import 'travel_model_article_image.dart';
import 'travel_model_article_url.dart';
import 'travel_model_article_topic.dart';
import 'travel_model_article_poi.dart';

part 'travel_model_article.g.dart';

@JsonSerializable()
class TravelModelArticle {
      TravelModelArticle();

  int articleId;
  String articleType;
  int productType;
  int sourceType;
  String articleTitle;
  TravelModelArticleAuthor author;
  List<TravelModelArticleImage> images;
  bool hasVideo;
  int readCount;
  int likeCount;
  int commentCount;
  List<TravelModelArticleUrl> urls;
  List<dynamic> tags;
  List<TravelModelArticleTopic> topics;
  List<TravelModelArticlePoi> pois;
  String publishTime;
  String publishTimeDisplay;
  String shootTime;
  String shootTimeDisplay;
  int level;
  String distanceText;
  bool isLike;
  int imageCounts;
  bool isCollected;
  int collectCount;
  int articleStatus;
  String poiName;

  factory TravelModelArticle.fromJson(Map<String,dynamic> json) => _$TravelModelArticleFromJson(json);
  Map<String, dynamic> toJson() => _$TravelModelArticleToJson(this);
}