import 'package:currency_app/core/components/app_constant/app_constant.dart';
import 'package:currency_app/core/components/widgets/button_widget.dart';
import 'package:currency_app/core/components/widgets/card_date_widget.dart';
import 'package:currency_app/core/components/widgets/select_date_widget.dart';
import 'package:currency_app/view_model/currency_time_view_mode.dart/currency_time_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../view_model/currency_time_view_mode.dart/currency_time_view_model_states.dart';

class CurrencyTimeScreen extends StatefulWidget {
  const CurrencyTimeScreen({super.key});

  @override
  State<CurrencyTimeScreen> createState() => _CurrencyTimeScreenState();
}

class _CurrencyTimeScreenState extends State<CurrencyTimeScreen> {
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
    return BlocProvider(
        create: (context) => CurrencyTimeViewModel(),
        child: BlocConsumer<CurrencyTimeViewModel, CurrencyTimeViewModelState>(
            listener: (context, state) {},
            builder: (context, state) {
              var cubit = context.read<CurrencyTimeViewModel>();

              return Scaffold(
                body: SingleChildScrollView(
                  child: Form(
                    key: formkey,
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                 
                                  SelectDateWidget(
                                      controller: _controller,
                                      controller2: _controller2,
                                      validtion: 'Please add the start Date',
                                       validtion2: 'Please add the end Date',
                                      hintText: '2020-01-01',
                                      hintText2: '2020-01-04',
                                      textName: 'Start Date',
                                      textName2: 'End Date'),
                  
                                  Padding(
                                    padding: const EdgeInsets.all(9.0),
                                    child: Button(
                                      name: 'Get Rates',
                                      onPressed: () {
                                        if(formkey.currentState!.validate()){
                                        cubit.excute(
                                          startDate: _controller.text,
                                          endDate: _controller2.text ,

                                        );

                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        if (state is LoadedCurrencyTimeStatus)
                          ...cubit.currencyDateModel!.rates.entries.map(
                            (e) => CardDate(
                              textCurreny: e,
                              textDate: e.key,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
