import 'package:currency_app/model/currency_home_model.dart';
import 'package:currency_app/view_model/currency_home_screen/currency_home_view_mode_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repository/currencys_api_remote.dart';

class CurrencyHomeViewModel extends Cubit<CurrencyHomeViewModelState> {
  CurrencyHomeViewModel() : super(InitialCurrencyHomeStatus());

  CurrencyHomeModel? currencyHomeModel;
   CurrencyApis? currencyApis;

  Future<CurrencyHomeModel?>excute()async{

    emit(LoadingCurrencyHomeStatus());

   currencyHomeModel= await CurrencyApis.getCurrencyHome();

    emit(LoadingCurrencyHomeStatus());
   

   return currencyHomeModel ;
  }
}
