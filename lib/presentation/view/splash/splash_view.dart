import 'dart:async';

import 'package:buss_app/presentation/resources/assets_manager.dart';
import 'package:buss_app/presentation/resources/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
// this for widget the change depend on user reactive
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // this method run just once and before build the widget
  @override
  void initState() {
    _waiting();
    super.initState();
  }

  _waiting() {
    Timer(const Duration(seconds: 2), _goNext);
  }

  _goNext() {
    //this method for switch to next screen and not return back if the user hit the back button
    //next screen is welcome screen go to presentation/welcome
    Navigator.pushReplacementNamed(context, RouteManager.welcome);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SvgPicture.asset(AssetsImageManager.logo)),
    );
  }
}
