import 'package:json_annotation/json_annotation.dart';



part 'travel_model_article_author_cover.g.dart';

@JsonSerializable()
class TravelModelArticleAuthorCover {
      TravelModelArticleAuthorCover();

  int articleId;
  String articleType;
  int productType;
  int sourceType;
  String articleTitle;
  Map<String, dynamic> author;
  List<dynamic> images;
  bool hasVideo;
  int readCount;
  int likeCount;
  int commentCount;
  List<dynamic> urls;
  List<dynamic> tags;
  List<dynamic> topics;
  List<dynamic> pois;
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

  factory TravelModelArticleAuthorCover.fromJson(Map<String,dynamic> json) => _$TravelModelArticleAuthorCoverFromJson(json);
  Map<String, dynamic> toJson() => _$TravelModelArticleAuthorCoverToJson(this);
}