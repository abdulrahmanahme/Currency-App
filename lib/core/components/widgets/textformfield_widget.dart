
import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController? controller,
  TextInputType? type,
  ValueChanged<String>? onSubmit,
  FormFieldValidator<String>? onChange,
  bool isPassword = false,
  required String? Function(String?)? validate,
  String? label,
  IconData? prefix,
  TextStyle? style,
  IconData? suffix,
  Function? suffixpress,
  Widget? suffixIcon,
  int maxLines = 1,
  String? hintText,
}) =>
    Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        onFieldSubmitted: onSubmit,
        maxLines: maxLines,
        validator: validate!,
        style: style,
        decoration: InputDecoration(
          fillColor: Colors.grey.shade300,
          filled: true,
          hintStyle: TextStyle(
              color: Color(0xff9D9491),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          hintText: hintText,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );