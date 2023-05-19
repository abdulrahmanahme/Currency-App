import 'package:currency_app/core/components/app_constant/app_constant.dart';
import 'package:currency_app/core/components/widgets/button_widget.dart';
import 'package:currency_app/core/components/widgets/card_currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/components/widgets/select_date_widget.dart';
import '../view_model/currency_conversion_view_model/currency_conversion_view_model.dart';
import '../view_model/currency_conversion_view_model/currency_conversion_view_model_states.dart';

class CurrencyConversionSreen extends StatefulWidget {
  const CurrencyConversionSreen({super.key});

  @override
  State<CurrencyConversionSreen> createState() => _CurrencyConversionSreenState();
}

class _CurrencyConversionSreenState extends State<CurrencyConversionSreen> {
    final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
final formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }
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
          child: Form(
            key:formkey ,
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
                      height: 320,
                      width: 350,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                       
                           SelectDateWidget(
                                        controller: _controller,
                                        controller2: _controller2,
                                        validtion: 'Please add the base currency',
                                         validtion2: 'Please add the second currency',
                                        hintText: 'USD',
                                        hintText2: 'EUR',
                                        textName: 'From',
                                        textName2: 'To'),
                                        
                     
                          Button(
                            name: 'Converate ',
                            onPressed: () {
                            
                               if(formkey.currentState!.validate()){
                                        cubit.excute(
                                          baseCurrency:_controller.text,
                                          secondCurrency:_controller2.text ,

                                        );
                               }
                            }
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              
            
                        if (state is LoadedCurrencyConversionStatus)

                            CardCurreny(
                                nameCurreny:
                                    cubit.currencyConversionModel!.query.from,
                                valueCurreny:
                                    cubit.currencyConversionModel!.query.to,
                                    info: cubit.currencyConversionModel!.info.rate.toString(),
                                    date:cubit.currencyConversionModel!.date.toString() ,
                              )
              
              ],
            ),
          ),
        )
      );
          }
      ),
    );
  }
}