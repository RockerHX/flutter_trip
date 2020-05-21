import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_trip/models/index.dart';

class TravelTabDao {
  static Future<TravelModelResult> fetch() async {
    try {
      rootBundle.loadString('assets/data/travel.json').then(
        (value) {
          print(value);
          final result = json.decode(value);
          return TravelTabModel.fromJson(result);
        },
      );
    } catch (e) {
      print(e);
      return null;
    }
  }
}
