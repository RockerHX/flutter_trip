import 'package:json_annotation/json_annotation.dart';

import 'search_item.dart';

part 'search_model.g.dart';

@JsonSerializable()
class SearchModel {
  SearchModel();

  String keyword;
  List<SearchItem> data;

  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);
  Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}
