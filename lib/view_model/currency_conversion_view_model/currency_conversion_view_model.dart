import 'package:currency_app/model/currency_convertion_model.dart';
import 'package:currency_app/repository/currencys_api_remote.dart';
import 'package:currency_app/view_model/currency_conversion_view_model/currency_conversion_view_model_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyConversionViewModel extends Cubit<CurrencyConversionViewModelState> {
  CurrencyConversionViewModel() : super(InitialCurrencyConversionStatus());
   bool isLoading = true;
   CurrencyApis? currencyApis;

   CurrencyConversionModel? currencyConversionModel;
   Future<CurrencyConversionModel?>excute({String ?baseCurrency, String? secondCurrency})async{
    emit(LoadingCurrencyConversionStatus());
    isLoading = true;
    currencyConversionModel =await CurrencyApis.getCurrencyConvertion(baseCurrency:baseCurrency ,secondCurrency: secondCurrency,);
    emit(LoadedCurrencyConversionStatus());
    isLoading = false;
return currencyConversionModel;

   }

 
}
