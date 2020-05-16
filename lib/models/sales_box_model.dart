import 'package:json_annotation/json_annotation.dart';

import 'common_model.dart';

part 'sales_box_model.g.dart';

@JsonSerializable()
class SalesBoxModel {
  SalesBoxModel();

  String icon;
  String moreUrl;
  CommonModel bigCard1;
  CommonModel bigCard2;
  CommonModel smallCard1;
  CommonModel smallCard2;
  CommonModel smallCard3;
  CommonModel smallCard4;

  factory SalesBoxModel.fromJson(Map<String, dynamic> json) =>
      _$SalesBoxModelFromJson(json);
  Map<String, dynamic> toJson() => _$SalesBoxModelToJson(this);
}
