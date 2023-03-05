import 'package:buss_app/app/app_preferences.dart';
import 'package:buss_app/app/dependency_injection.dart';
import 'package:buss_app/presentation/common/widgets/identifier_widget.dart';
import 'package:buss_app/presentation/resources/route_manager.dart';
import 'package:buss_app/presentation/resources/size_manager.dart';
import 'package:buss_app/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  final AppPreferences _appPreferences =
      DependencyInjection.instance<AppPreferences>();

  Future _setOnTap(String value, BuildContext context) async {
    //save what user choose as user type
    // then switch to login screen go to presentation/login
    Navigator.pushReplacementNamed(context, RouteManager.login);

    await _appPreferences.setUserType(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(StringManager.letGo)),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: SizeManager.s35, vertical: SizeManager.s20),
        child: SingleChildScrollView(
          child: Column(children: [
            IdentifierWidget(
              text: StringManager.bussCompany,
              onTap: () {
                _setOnTap(StringManager.bussCompany, context);
              },
            ),
            const SizedBox(
              height: SizeManager.s10,
            ),
            IdentifierWidget(
              text: StringManager.student,
              onTap: () {
                _setOnTap(StringManager.student, context);
              },
            ),
            const SizedBox(
              height: SizeManager.s10,
            ),
            IdentifierWidget(
              text: StringManager.parent,
              onTap: () {
                _setOnTap(StringManager.parent, context);
              },
            ),
          ]),
        ),
      ),
    );
  }
}
