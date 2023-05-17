import 'package:currency_app/model/currency_convertion_model.dart';
import 'package:currency_app/view_model/currency_home_screen/currency_home_view_mode_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repository/currencys_api_remote.dart';

class CurrencyHomeViewModel extends Cubit<CurrencyHomeViewModelState> {
  CurrencyHomeViewModel() : super(InitialCurrencyHomeStatus());
  bool isLoading = true;

  CurrencyConversionModel  ?currencyConversionModel;

  Future<CurrencyConversionModel?>excute()async{
    emit(LoadingCurrencyHomeStatus());
    isLoading = true;
   currencyConversionModel= await CurrencyApis.getCurrencyConvertion();
   print('tttt');

    emit(LoadingCurrencyHomeStatus());
   
    isLoading = false;

   return currencyConversionModel ;
  }
}
