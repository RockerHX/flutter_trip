import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_trip/models/index.dart';

const TRAVEL_DAO_URL =
    'https://www.devio.org/io/flutter_app/json/travel_page.json';

class TravelDao {
  static Future<TravelTabModel> fetch() async {
    try {
      Response response = await Dio().get(TRAVEL_DAO_URL);
      switch (response.statusCode) {
        case 200:
          final result = json.decode(response.toString());
          return TravelTabModel.fromJson(result);
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
