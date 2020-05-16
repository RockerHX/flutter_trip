import 'package:json_annotation/json_annotation.dart';

import 'common_model.dart';

part 'grid_nav_item.g.dart';

@JsonSerializable()
class GridNavItem {
  GridNavItem();

  String startColor;
  String endColor;
  CommonModel mainItem;
  CommonModel item1;
  CommonModel item2;
  CommonModel item3;
  CommonModel item4;

  factory GridNavItem.fromJson(Map<String, dynamic> json) =>
      _$GridNavItemFromJson(json);
  Map<String, dynamic> toJson() => _$GridNavItemToJson(this);
}
