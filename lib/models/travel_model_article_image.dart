import 'package:json_annotation/json_annotation.dart';



part 'travel_model_article_image.g.dart';

@JsonSerializable()
class TravelModelArticleImage {
      TravelModelArticleImage();

  int imageId;
  String dynamicUrl;
  String originalUrl;
  int width;
  int height;
  int mediaType;
  bool isWaterMarked;

  factory TravelModelArticleImage.fromJson(Map<String,dynamic> json) => _$TravelModelArticleImageFromJson(json);
  Map<String, dynamic> toJson() => _$TravelModelArticleImageToJson(this);
}