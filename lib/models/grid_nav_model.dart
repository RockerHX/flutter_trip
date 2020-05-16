import 'package:json_annotation/json_annotation.dart';

import 'grid_nav_item.dart';

part 'grid_nav_model.g.dart';

@JsonSerializable()
class GridNavModel {
  GridNavModel();

  GridNavItem hotel;
  GridNavItem flight;
  GridNavItem travel;

  factory GridNavModel.fromJson(Map<String, dynamic> json) =>
      _$GridNavModelFromJson(json);
  Map<String, dynamic> toJson() => _$GridNavModelToJson(this);
}
