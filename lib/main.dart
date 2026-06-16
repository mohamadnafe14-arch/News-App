import 'package:flutter/material.dart';
import 'package:news_app/core/utils/dependecy_injection.dart';
import 'package:news_app/core/widgets/app.dart';

void main() {
  setupLocator();
  runApp(const App());
}
