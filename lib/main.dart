import 'package:buss_app/app/app.dart';
import 'package:buss_app/app/dependency_injection.dart';
import 'package:flutter/material.dart';

// start point of any app
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.initApp();
  // to run flutter application and fit it on device screen
  runApp(const BussApp());
}
