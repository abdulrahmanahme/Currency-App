
import 'package:currency_app/core/components/widgets/drop_down_list_widget.dart';
import 'package:currency_app/core/components/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SelectCurrency extends StatelessWidget {
  const SelectCurrency(
      {super.key,
     
      required this.options,
    
      required this.selectvalue});
  final String? selectvalue;

  final List<String> options;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
          text: 'From ',
        ),
    DropdownWidget(options:options,selectedOption:selectvalue!),
     TextWidget(
          text: 'TO',
        ),
    DropdownWidget(options: options,selectedOption:selectvalue!),
    

    
      ],
    );
  }
}