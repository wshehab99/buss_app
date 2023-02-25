import 'package:buss_app/presentation/resources/route_manager.dart';
import 'package:flutter/material.dart';

import '../presentation/resources/theme_manager.dart';

class BussApp extends StatelessWidget {
  const BussApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buss App',
      theme: ThemeManager.appTheme,
      initialRoute: RouteManager.splash,
      onGenerateRoute: RouteGenerator.getRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
