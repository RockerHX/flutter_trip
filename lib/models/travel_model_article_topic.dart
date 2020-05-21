import 'package:json_annotation/json_annotation.dart';



part 'travel_model_article_topic.g.dart';

@JsonSerializable()
class TravelModelArticleTopic {
      TravelModelArticleTopic();

  int topicId;
  String topicName;
  int level;

  factory TravelModelArticleTopic.fromJson(Map<String,dynamic> json) => _$TravelModelArticleTopicFromJson(json);
  Map<String, dynamic> toJson() => _$TravelModelArticleTopicToJson(this);
}