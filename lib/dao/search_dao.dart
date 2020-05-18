import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_trip/models/index.dart';

class SearchDao {
  static Future<SearchModel> fetch(String url, String keyword) async {
    try {
      Response response = await Dio().get(url);
      switch (response.statusCode) {
        case 200:
          final result = json.decode(response.toString());
          final model = SearchModel.fromJson(result);
          model.keyword = keyword;
          return model;
          break;
        default:
          return null;
          break;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
