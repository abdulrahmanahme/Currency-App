import 'package:currency_app/core/components/widgets/button_widget.dart';
import 'package:currency_app/core/components/widgets/card_currency.dart';
import 'package:currency_app/core/components/widgets/drop_down_list_widget.dart';
import 'package:currency_app/core/components/widgets/text_widget.dart';
import 'package:currency_app/repository/remote.dart';
import 'package:flutter/material.dart';

import '../model/currency_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;
  ExchangeRate? data;
  @override
  void initState() {
    RemoteApis.getCurrenys().then((value) => setState(() {
          isLoading = false;
          data = value;
        }));

    super.initState();
  }

  RemoteApis? remoteApis;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                children: [
             
                  ...data!.rates.entries
                      .map((cur) => CardCurreny(
                            nameCurreny: cur.key,
                            valueCurreny: cur.value.toString(),
                          ))
                      .toList(),
              
                ],
              ),
            ),
    );
  }
}

