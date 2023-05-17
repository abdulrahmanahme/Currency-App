import 'package:currency_app/core/components/app_constant/app_constant.dart';
import 'package:currency_app/core/components/widgets/button_widget.dart';
import 'package:currency_app/core/components/widgets/card_currency.dart';
import 'package:currency_app/core/components/widgets/select_currrency_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../view_model/currency_conversion_view_model/currency_conversion_view_model.dart';
import '../view_model/currency_conversion_view_model/currency_conversion_view_model_states.dart';

class CurrencyConversionSreen extends StatefulWidget {
  const CurrencyConversionSreen({super.key});

  @override
  State<CurrencyConversionSreen> createState() => _CurrencyConversionSreenState();
}

class _CurrencyConversionSreenState extends State<CurrencyConversionSreen> {
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => CurrencyConversionViewModel(),
      child: BlocConsumer< CurrencyConversionViewModel,CurrencyConversionViewModelState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = context.read<CurrencyConversionViewModel>();
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    height: 278,
                    width: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Convert Currency ',
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                       const SelectCurrency(
                          options: AppConstant.options,
                            selectvalue: AppConstant.selectedDay
                        ),
                      
                        Button(
                          name: 'Converate ',
                          onPressed: () {
                            cubit.excute();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            
                    // if (state is LoadingCurrencyConversionStatus)
                      cubit.isLoading
                          ? const Center(child: CircularProgressIndicator())
                          : 
                          CardCurreny(
                              nameCurreny:
                                  cubit.currencyConversionModel!.query.from,
                              valueCurreny:
                                  cubit.currencyConversionModel!.query.to,
                            )
              //  if(cubit.conversionModel!=null)
              //   if (state is LoadingCurrencyConversionStatus)
              //         cubit.isLoading
              //             ? const Center(child: CircularProgressIndicator())
              //             :
              //       CardCurreny(
              //                 nameCurreny:cubit.conversionModel!.query.from  ,
              //                 valueCurreny:cubit.conversionModel!.query.from,
              //               )
              
            ],
          ),
        )
      );
          }
      ),
    );
  }
}