import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  DropdownWidget(
      {super.key,required this.options ,required this.selectedOption });
   
 String selectedOption;
 List<String> options;
  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: DropdownButton(
        value: widget.selectedOption,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 16,
        underline: SizedBox(),
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        onChanged: 
         (String ?newValue) {
          setState(() {
            widget.selectedOption = newValue!;

          });
        },
        items: widget.options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
class DropdownCurrency extends StatelessWidget {
  const DropdownCurrency({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}