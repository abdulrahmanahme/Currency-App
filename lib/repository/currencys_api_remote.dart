import 'package:dio/dio.dart';

import 'package:currency_app/model/currency_convertion_model.dart';
import 'package:currency_app/model/currency_data_model.dart';
import 'package:currency_app/model/currency_home_model.dart';

import '../core/components/app_constant/app_constant.dart';


class CurrencyApis  {
  
static  Future<CurrencyConversionModel?> getCurrencyConvertion({String ?baseCurrency, String? secondCurrency}) async {
    final response = await Dio()
        .get('${AppConstant.convertApi}$baseCurrency&to=$secondCurrency');
    if (response.statusCode == 200) {
      return CurrencyConversionModel.fromJson(
          response.data as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load data');
    }
  }

 static Future<CurrencyDateModel?> getCurrencyDate({String? startDate ,String?endDate }) async {
    final response = await Dio().get(
        '${AppConstant.convertdata}$startDate&end_date=$endDate');
          if(response.statusCode == 404 ) throw Exception();

    if (response.statusCode == 200) {
      return CurrencyDateModel.fromJson(
          json: response.data as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load data');
    }
  }

 static Future<CurrencyHomeModel?> getCurrencyHome() async {
    final response = await Dio().get("${AppConstant.homeCurrency}");
    if (response.statusCode == 200) {

      return CurrencyHomeModel.fromJson(
          json: response.data as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
