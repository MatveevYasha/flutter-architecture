import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/my_home_page.dart';
import 'package:module_busines/module_busines.dart';

void main() {
  BlocFactory.instance.initialize();
  runApp(const MyApp());
}
