import 'package:buss_app/app/app.dart';
import 'package:buss_app/app/dependency_injection.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.initApp();
  runApp(const BussApp());
}
