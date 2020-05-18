import 'package:json_annotation/json_annotation.dart';

part 'search_item.g.dart';

@JsonSerializable()
class SearchItem {
  SearchItem();

  String code;
  String word;
  String type;
  String districtname;
  String zonename;
  String star;
  String price;
  String url;

  factory SearchItem.fromJson(Map<String, dynamic> json) =>
      _$SearchItemFromJson(json);
  Map<String, dynamic> toJson() => _$SearchItemToJson(this);
}
