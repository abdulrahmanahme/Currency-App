import 'package:flutter/material.dart';

class CardDate extends StatelessWidget {
  const CardDate({
    super.key,
    this.textDate,
    this.textCurreny,
  });
  final String? textDate;
  final MapEntry<String, Map<String, dynamic>>? textCurreny;

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Range Date:   $textDate",
                    style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            ListView.builder(
              itemCount: textCurreny!.value.entries.length,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.grey),
                    ),
                    title: Text(textCurreny!.value.entries
                        .toList()[index]
                        .key
                        .toString()),
                    subtitle: Text(textCurreny!.value.entries
                        .toList()[index]
                        .value
                        .toString()),
                  ),
                );
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
