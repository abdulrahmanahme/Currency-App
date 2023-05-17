import 'package:currency_app/model/currency_convertion_model.dart';
import 'package:currency_app/model/currency_home_model.dart';
import 'package:currency_app/model/currency_data_model.dart';
import 'package:dio/dio.dart';

class CurrencyApis {
  static Future<CurrencyHomeModel?> getCurrencyHome() async {
    final response = await Dio().get('https://api.exchangerate.host/latest');
    if (response.statusCode == 200) {
      return CurrencyHomeModel.fromJson(
          json: response.data as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load data');
    }
  }

  static Future<CurrencyDateModel?> getCurrencyDate() async {
    final response = await Dio().get(
        'https://api.exchangerate.host/timeseries?start_date=2020-01-01&end_date=2020-01-04');
    if (response.statusCode == 200) {
      return CurrencyDateModel.fromJson(
          json: response.data as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load data');
    }
  }

  static Future<CurrencyConversionModel?> getCurrencyConvertion() async {
    final response = await Dio()
        .get('https://api.exchangerate.host/convert?from=USD&to=EUR');
    if (response.statusCode == 200) {
      return CurrencyConversionModel.fromJson(
          response.data as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
