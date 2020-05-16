import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_trip/models/index.dart';

const HOME_DAO_URL = 'http://devio.org/io/flutter_app/json/home_page.json';

class HomeDao {
  static Future<HomeModel> fetch() async {
    try {
      Response response = await Dio().get(HOME_DAO_URL);
      switch (response.statusCode) {
        case 200:
          final result = json.decode(response.toString());
          return HomeModel.fromJson(result);
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
