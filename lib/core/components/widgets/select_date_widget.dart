import 'package:currency_app/core/components/widgets/text_widget.dart';
import 'package:currency_app/core/components/widgets/textformfield_widget.dart';
import 'package:flutter/material.dart';

class SelectDateWidget extends StatelessWidget {
  const SelectDateWidget({
    super.key,
    required this.controller,
    required this.validtion,
    required this.hintText,
    required this.textName,
    required this.textName2,
   required this.controller2,
   required this.hintText2,
   required this.validtion2,
  });
  final String? textName;
  final String? textName2;
  final String? validtion;
  final String? validtion2;
  final String? hintText;
  final String? hintText2;
  final TextEditingController? controller;
  final TextEditingController? controller2;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget(
              text: '$textName',
            ),
          ],
        ),
        defaultFormField(
          controller: controller,
          hintText: hintText,
          validate: (value) {
            if (value == null || value.isEmpty) {
              return validtion;
            }

            return null;
          },
          type: TextInputType.emailAddress,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget(
              text: "$textName2",
            ),
          ],
        ),
        defaultFormField(
          controller: controller2,
          hintText: hintText2,
          validate: (value) {
            if (value == null || value.isEmpty) {
              return validtion2;
            }

            return null;
          },
          type: TextInputType.emailAddress,
        ),
      ],
    );
  }
}

// class SelectCurrencyWidget  extends StatelessWidget {
//   const SelectCurrencyWidget(
//       {super.key,
     
//       required this.options,
//       this.textName,
//       required this.selectvalue});
//   final String? selectvalue;
//   final String? textName;

//   final List<String> options;

//   @override
//   Widget build(BuildContext context) {
//     return  Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         TextWidget(
//           text: '${textName}',
//         ),
//     DropdownWidget(options:options,selectedOption:selectvalue!),
//     DropdownWidget(options: options,selectedOption:selectvalue!),
//     DropdownWidget(options: options,selectedOption:selectvalue!),

    
//       ],
//     );
//   }
// }



