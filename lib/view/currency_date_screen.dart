import 'package:currency_app/core/components/app_constant/app_constant.dart';
import 'package:currency_app/core/components/widgets/button_widget.dart';
import 'package:currency_app/core/components/widgets/card_currency.dart';
import 'package:currency_app/core/components/widgets/select_currrency_widget.dart';
import 'package:flutter/material.dart';

class CurrencyDateSreen extends StatefulWidget {
  const CurrencyDateSreen({super.key});

  @override
  State<CurrencyDateSreen> createState() => _CurrencyDateSreenState();
}

class _CurrencyDateSreenState extends State<CurrencyDateSreen> {
  @override
  Widget build(BuildContext context) {
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
                      SelectCurrency(
                        options: AppConstant.options,
                          selectvalue: AppConstant.selectedDay
                      ),
                    
                      Button(
                        name: 'Get Rates',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const  CardCurreny(
              nameCurreny:'Euro to Eyp' ,
              valueCurreny:'1.2533' ,
            ),
          ],
        ),
      ),
    );
  }
}