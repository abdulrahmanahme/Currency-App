import 'package:currency_app/core/components/widgets/card_home_widget.dart';
import 'package:currency_app/model/currency_home_model.dart';
import 'package:currency_app/repository/currencys_api_remote.dart';
import 'package:currency_app/view_model/currency_home_screen/currency_home_view_mode_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../view_model/currency_home_screen/currency_home_view_model.dart';

class CurrencyHomeScreen extends StatefulWidget {
  const CurrencyHomeScreen({super.key});

  @override
  State<CurrencyHomeScreen> createState() => _CurrencyHomeScreenState();
}

class _CurrencyHomeScreenState extends State<CurrencyHomeScreen> {
  bool isLoading = true;
  CurrencyApis? data;
  CurrencyHomeModel? currencyHomeModel;

  CurrencyApis? currencyApis;

  @override
  void initState() {
    CurrencyApis.getCurrencyHome().then((value) => setState(() {
          isLoading = false;
          currencyHomeModel = value;
        }));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CurrencyHomeViewModel(),
      child: BlocConsumer<CurrencyHomeViewModel, CurrencyHomeViewModelState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              body: isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          ...currencyHomeModel!.rates!.entries
                              .map((cur) => CardHome(
                                    nameCurreny: cur.key,
                                    valueCurreny: cur.value.toString(),
                                  ))
                              .toList(),
                        ],
                      ),
                    ),
            );
          }),
    );
  }
}
