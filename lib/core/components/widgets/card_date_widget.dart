
import 'package:flutter/material.dart';

class CardDate extends StatelessWidget {
  const CardDate({
    super.key,
    this.textDate,
    this.textCurreny,
    this.textValue
  });
  final String ?textDate;
  final String ?textCurreny;
  final String ?textValue;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 200,
        width: 350,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$textCurreny",
                    style:const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "$textValue: $textDate",
                    style:const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}