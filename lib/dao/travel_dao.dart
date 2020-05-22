import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_trip/models/index.dart';

class TravelDao {
  static Future<TravelModelResult> fetch() async {
    final value = await rootBundle.loadString('assets/data/travel.json');
    final result = json.decode(value);
    return TravelModelResult.fromJson(result);
  }
}
