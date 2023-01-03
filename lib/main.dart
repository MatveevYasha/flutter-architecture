import 'package:flutter/material.dart';
import 'package:flutter_application_1/businnes/bloc_factory.dart';
import 'package:flutter_application_1/ui/my_app.dart';

void main() {
  BlocFactory.instance.initialize();
  runApp(const MyApp());
}
