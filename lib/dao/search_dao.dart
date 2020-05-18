import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_trip/models/index.dart';

class SearchDao {
  static Future<SearchModel> fetch(String url) async {
    try {
      Response response = await Dio().get(url);
      switch (response.statusCode) {
        case 200:
          final result = json.decode(response.toString());
          return SearchModel.fromJson(result);
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
