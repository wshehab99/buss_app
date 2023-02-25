import 'package:buss_app/presentation/common/widgets/custom_button.dart';
import 'package:buss_app/presentation/resources/route_manager.dart';
import 'package:buss_app/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

import '../resources/size_manager.dart';

class StudentView extends StatelessWidget {
  const StudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringManager.welcome),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: SizeManager.s50,
            ),
            CustomButton(
              text: StringManager.booking,
              onTap: () {
                Navigator.of(context).pushNamed(RouteManager.booking);
              },
            ),
            const SizedBox(
              height: SizeManager.s50,
            ),
            CustomButton(
              text: StringManager.viewBooking,
              onTap: () {
                Navigator.of(context).pushNamed(RouteManager.viewBooking);
              },
            ),
            const SizedBox(
              height: SizeManager.s50,
            ),
            CustomButton(
              text: StringManager.readQRcode,
              onTap: () {
                Navigator.of(context).pushNamed(RouteManager.qrCode);
              },
            ),
          ],
        ),
      )),
    );
  }
}
