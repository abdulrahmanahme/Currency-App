import 'dart:convert';
import 'dart:math';

import 'package:currency_app/model/currency_model.dart';
import 'package:dio/dio.dart';

class RemoteApis {
  static Map<String, dynamic> map2 = {};


  static Future<ExchangeRate?> getCurrenys() async {
    try {
      final response = await Dio().get('https://api.exchangerate.host/latest');
      if (response.statusCode == 200) {
       return ExchangeRate.fromJson(json: response.data as Map<String,dynamic>);
      }
    } catch (e) {
    print('$e');
    
    }
   
  }
}
