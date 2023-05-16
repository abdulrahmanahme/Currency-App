import 'package:currency_app/core/components/widgets/button_widget.dart';
import 'package:currency_app/core/components/widgets/card_currency.dart';
import 'package:currency_app/core/components/widgets/drop_down_list_widget.dart';
import 'package:currency_app/core/components/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
        
          CardCurreny(
              nameCurreny:'Euro to Eyp' ,
              valueCurreny:'1.2533' ,
            ),

          
          ],
        ),
      ),
    );
  }
}


