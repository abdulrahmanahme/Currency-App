import 'package:currency_app/view/layout_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Currency App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LayoutScreen(),
    );
  }
}
