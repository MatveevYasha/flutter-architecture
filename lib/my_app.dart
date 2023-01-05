import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Clean Architecture'),
    );
  }
}
