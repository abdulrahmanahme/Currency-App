import 'package:currency_app/model/currency_convertion_model.dart';
import 'package:currency_app/model/currency_data_model.dart';
import 'package:currency_app/model/currency_home_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  group('test  CurrencyConversion function', () {
    
    test('should return a CurrencyConversionModel', () async {
      
      final response = await Dio()
          .get('https://api.exchangerate.host/convert?from=USD&to=EUR');
      expect(response.statusCode, 200);
      final model = CurrencyConversionModel.fromJson(
          response.data as Map<String, dynamic>);
     
       expect(model.query.to,model.query.to);
      expect(model.query.from, model.query.from);
      expect(model.info.rate,model.info.rate);
  });
 


  group('test CurrencyDate function ', () {
    test('should return a CurrencyDateModel  if the response status code is 200', () async {
      final response = await Dio().get(
          'https://api.exchangerate.host/timeseries?start_date=2023-05-19&end_date=2023-05-20');
      expect(response.statusCode, 200);
      final model = CurrencyDateModel.fromJson(
          json: response.data as Map<String, dynamic>);
      expect(model.base,model.base);
      // expect(model.startDate, '2023-05-19');
      expect(model.startDate, model.startDate);
      expect(model.endDate,model.endDate);
      expect(model.rates,model.rates );
    });

   });
    
 group('test CurrencyHomeModel function', () {
   test('should return a CurrencyHomeModel if the response status code is 200', () async {
      final response = await Dio().get('https://api.exchangerate.host/latest');
      expect(response.statusCode, 200);
      final currencyHomeModel = CurrencyHomeModel.fromJson(
          json: response.data as Map<String, dynamic>);
      expect(currencyHomeModel, isNotNull);
    });


  });
  
});
}