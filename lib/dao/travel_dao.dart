import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_trip/models/index.dart';

class TravelDao {
  static Future<TravelModelResult> fetch() async {
    try {
      rootBundle.loadString('assets/data/travel.json').then(
        (value) {
          final result = json.decode(value);
          return TravelModelResult.fromJson(result);
        },
      );
    } catch (e) {
      print(e);
      return null;
    }
  }
}
