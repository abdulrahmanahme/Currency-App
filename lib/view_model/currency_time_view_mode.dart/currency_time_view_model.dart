import 'package:currency_app/model/currency_data_model.dart';
import 'package:currency_app/repository/currencys_api_remote.dart';
import 'package:currency_app/view_model/currency_time_view_mode.dart/currency_time_view_model_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyTimeViewModel extends Cubit<CurrencyTimeViewModelState> {
  CurrencyTimeViewModel() : super(InitialCurrencyTimeStatus());
  bool isLoading = true;
  CurrencyDateModel? currencyDateModel;
   CurrencyApis? currencyApis;
  
  Future<CurrencyDateModel?> excute( {String ?startDate, String? endDate}) async {
    emit(LoadingCurrencyTimeStatus());
    isLoading = true;
    currencyDateModel = await CurrencyApis.getCurrencyDate(startDate:startDate ,endDate: endDate);
    emit(LoadedCurrencyTimeStatus());
    isLoading = false;

    return currencyDateModel;
  }
}
