import 'package:json_annotation/json_annotation.dart';



part 'common_model.g.dart';

@JsonSerializable()
class CommonModel {
      CommonModel();

  String icon;
  String title;
  String url;
  String statusBarColor;
  bool hideAppBar;

  factory CommonModel.fromJson(Map<String,dynamic> json) => _$CommonModelFromJson(json);
  Map<String, dynamic> toJson() => _$CommonModelToJson(this);
}