import 'package:currency_app/core/components/widgets/button_widget.dart';
import 'package:currency_app/core/components/widgets/card_currency.dart';
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

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CurrencyHomeViewModel(),
      child: BlocConsumer<CurrencyHomeViewModel, CurrencyHomeViewModelState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = context.read<CurrencyHomeViewModel>();

            return Scaffold(
              body:

                  //  cubit.isLoading   ? const Center(child: CircularProgressIndicator())
                  //     :
                  SingleChildScrollView(
                child: Column(
                  children: [
           

                    // ...data!.rates.entries
                    //     .map((cur) => CardCurreny(
                    //           nameCurreny: cur.key,
                    //           valueCurreny: cur.value.toString(),
                    //         ))
                    //     .toList(),
                    
                    Button(
                      name: 'Get Rates',
                      onPressed: () {
                        cubit.excute();
                      },
                    ),
                    if (state is LoadingCurrencyHomeStatus)
                      cubit.isLoading
                          ? const Center(child: CircularProgressIndicator())
                          : CardCurreny(
                              nameCurreny:
                                  cubit.currencyConversionModel!.query.from,
                              valueCurreny:
                                  cubit.currencyConversionModel!.query.to,
                            )

                    //  ...currencyCompare!.query.
                    //     .map((cur) => CardCurreny(
                    //           nameCurreny: cur.key,
                    //           valueCurreny: cur.value.toString(),
                    //         ))
                    //     .toList(),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
