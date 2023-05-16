
import 'package:currency_app/core/components/widgets/drop_down_list_widget.dart';
import 'package:currency_app/core/components/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SelectDateWidget extends StatelessWidget {
  const SelectDateWidget(
      {super.key,
     
      required this.options,
      this.textName,
      required this.selectvalue});
  final String? selectvalue;
  final String? textName;

  final List<String> options;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWidget(
          text: '$textName',
        ),
    DropdownWidget(options: options,selectedOption:selectvalue!),
    DropdownWidget(options: options,selectedOption:selectvalue!),
    DropdownWidget(options: options,selectedOption:selectvalue!),

    
      ],
    );
  }
}

class SelectCurrencyWidget  extends StatelessWidget {
  const SelectCurrencyWidget(
      {super.key,
     
      required this.options,
      this.textName,
      required this.selectvalue});
  final String? selectvalue;
  final String? textName;

  final List<String> options;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWidget(
          text: '${textName}',
        ),
    DropdownWidget(options:options,selectedOption:selectvalue!),
    DropdownWidget(options: options,selectedOption:selectvalue!),
    DropdownWidget(options: options,selectedOption:selectvalue!),

    
      ],
    );
  }
}



