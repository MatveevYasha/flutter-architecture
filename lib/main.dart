import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_app.dart';
import 'package:module_busines/module_busines.dart';

void main() {
  BlocFactory.instance.initialize();
  runApp(const MyApp());
}
