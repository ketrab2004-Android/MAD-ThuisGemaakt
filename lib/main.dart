import 'package:flutter/material.dart';
import 'package:thuis_gemaakt/pages/.dart' as Pages;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ThuisGemaakt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Pages.HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
