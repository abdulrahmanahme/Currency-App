import 'package:currency_app/repository/currencys_api_remote.dart';
import 'package:currency_app/view/layout_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // RemoteApis.getUse();
  // RemoteApis.get();

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
