import 'package:currency_app/core/components/app_constant/app_constant.dart';
import 'package:currency_app/core/components/widgets/button_widget.dart';
import 'package:currency_app/core/components/widgets/card_date_widget.dart';
import 'package:currency_app/core/components/widgets/select_date_widget.dart';
import 'package:flutter/material.dart';

class CurrencyTimeScreen extends StatefulWidget {
  const CurrencyTimeScreen({super.key});

  @override
  State<CurrencyTimeScreen> createState() => _CurrencyTimeScreenState();
}

class _CurrencyTimeScreenState extends State<CurrencyTimeScreen> {
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            '  Year  Month  Day  ',
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                      const SelectDateWidget(
                          textName: 'Start Date :',
                          options: AppConstant.options,
                          selectvalue: AppConstant.selectedDay),
                      const SelectDateWidget(
                          textName: 'Start End :',
                          options: AppConstant.options,
                          selectvalue: AppConstant.selectedDay),
                      Button(
                        name: 'Get Rates',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const CardDate(
              textCurreny: '2020-01-01',
              textDate: '1.6688',
              textValue: "USD",
            ),
          ],
        ),
      ),
    );
  }
}