import 'package:buss_app/presentation/resources/route_manager.dart';
import 'package:flutter/material.dart';

import '../presentation/resources/theme_manager.dart';

class BussApp extends StatelessWidget {
  const BussApp({super.key});
// this method is to build the widget
  @override
  Widget build(BuildContext context) {
    //root of the widget tree
    return MaterialApp(
      title: 'Buss App',
      theme: ThemeManager.appTheme,
      //this is first screen of the application
      // for nex go to presentation/splash
      initialRoute: RouteManager.splash,
      //this method to  just control the routing and switching of screens
      onGenerateRoute: RouteGenerator.getRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
