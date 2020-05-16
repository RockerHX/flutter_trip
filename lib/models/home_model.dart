import 'package:json_annotation/json_annotation.dart';

import 'config_model.dart';
import 'common_model.dart';
import 'grid_nav_model.dart';
import 'sales_box_model.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  HomeModel();

  ConfigModel config;
  List<CommonModel> bannerList;
  List<CommonModel> localNavList;
  GridNavModel gridNav;
  List<CommonModel> subNavList;
  SalesBoxModel salesBox;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}
