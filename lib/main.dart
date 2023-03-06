import 'package:buss_app/app/app.dart';
import 'package:buss_app/app/dependency_injection.dart';
import 'package:flutter/material.dart';

// entry point of any app
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.initApp();
  // to run flutter application and fit it on device screen
  //start point for flutter app
  runApp(const BussApp());
}
