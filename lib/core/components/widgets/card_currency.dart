
import 'package:flutter/material.dart';

class CardCurreny extends StatelessWidget {
  const CardCurreny({
    super.key,
    this.nameCurreny,
    this.valueCurreny
  });

  final String ?nameCurreny;
  final String ?valueCurreny;
  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              child: ListTile(
                title: Text(
                  "$nameCurreny",
                  style:const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w700),
                ),
                subtitle: Text("$valueCurreny",
                    style:const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700)),
                leading:const Icon(Icons.currency_exchange),
                trailing: const Icon(Icons.euro_rounded),
              ),
            ),
          );
  }
}