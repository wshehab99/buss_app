import 'package:buss_app/app/app_preferences.dart';
import 'package:buss_app/app/dependency_injection.dart';
import 'package:buss_app/presentation/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../common/widgets/app_button.dart';
import '../resources/color_manger.dart';
import '../resources/route_manager.dart';
import '../resources/size_manager.dart';
import '../resources/string_manager.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final AppPreferences _appPreferences =
      DependencyInjection.instance<AppPreferences>();
  Future _navigate() async {
    //this method for get what user just choose and then give them the view
    // this after he logged in
    String type = _appPreferences.getUserType();
    if (type == StringManager.bussCompany) {
      Navigator.pushReplacementNamed(context, RouteManager.company);
    } else if (type == StringManager.parent) {
      Navigator.pushReplacementNamed(context, RouteManager.parent);
    } else {
      Navigator.pushReplacementNamed(context, RouteManager.student);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Positioned(
              right: SizeManager.ns21,
              top: SizeManager.ns95,
              child: Container(
                height: SizeManager.s241,
                width: SizeManager.s241,
                decoration: const BoxDecoration(
                  color: ColorManager.lightBlueOpacity,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(SizeManager.ns7, SizeManager.s7),
                      color: ColorManager.lightBlueOpacity,
                      spreadRadius: SizeManager.s4,
                    )
                  ],
                ),
              )),
          Positioned(
              left: SizeManager.ns54,
              bottom: SizeManager.ns42,
              child: Container(
                height: SizeManager.s181,
                width: SizeManager.s181,
                decoration: const BoxDecoration(
                  color: ColorManager.softYellowOpacity,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(SizeManager.s20, SizeManager.ns10),
                      color: ColorManager.softYellowOpacity,
                      spreadRadius: SizeManager.s7,
                    ),
                  ],
                ),
              )),
          _getForm(context),
        ]),
      ),
    );
  }

  Widget _getForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SizeManager.s43),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: SizeManager.s100,
          ),
          Center(
              child: SvgPicture.asset(
            AssetsImageManager.logo,
            height: SizeManager.s175,
            width: SizeManager.s175,
          )),
          const SizedBox(
            height: SizeManager.s25,
          ),
          TextFormField(
            style: Theme.of(context).textTheme.bodyMedium,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: StringManager.email,
            ),
          ),
          const SizedBox(
            height: SizeManager.s40,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: const InputDecoration(hintText: StringManager.password),
          ),
          const SizedBox(
            height: SizeManager.s20,
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Text(
                StringManager.forgetPassword,
                style: Theme.of(context).textTheme.bodySmall,
              )),
          const SizedBox(
            height: SizeManager.s50,
          ),
          AppButton(
            onPressed: () {
              _navigate();
            },
            text: StringManager.login,
          ),
          const SizedBox(
            height: SizeManager.s25,
          ),
          AppButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.register);
            },
            text: StringManager.register,
            isPrimary: false,
          ),
          const SizedBox(
            height: SizeManager.s35,
          ),
        ],
      ),
    );
  }
}
