import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    this.name,
    this.onPressed,
  });

  final String? name;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blueGrey.shade900,
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 100, right: 100),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        '$name',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
