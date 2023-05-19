
import 'package:flutter/material.dart';

class CardCurreny extends StatelessWidget {
  const CardCurreny({
    super.key,
    this.nameCurreny,
    this.valueCurreny,
    this.date,
    this.info,
  });

  final String ?nameCurreny;
  final String ?valueCurreny;
  final String ?info;
  final String ?date;


  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              child: Column(
                children: [
                   ListTile(
                    title: Text(
                      "$nameCurreny",
                      style:const TextStyle(
                        color: Colors.amber,
                          fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text("$valueCurreny",
                        style:const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    leading:const Icon(Icons.currency_exchange),
                    trailing: const Icon(Icons.euro_rounded),
                  ),
                  ListTile(
                    title: Text(
                      "$date",
                      style:const TextStyle(
                        color: Colors.amber,
                          fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text("$info",
                        style:const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    leading:const Icon(Icons.currency_exchange),
                    trailing: const Icon(Icons.euro_rounded),
                  ),
                ],
              ),
            ),
          );
  }
}



