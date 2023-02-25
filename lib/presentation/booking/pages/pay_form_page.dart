import 'package:buss_app/presentation/common/widgets/app_button.dart';
import 'package:buss_app/presentation/resources/size_manager.dart';
import 'package:flutter/material.dart';

class PayFormPage extends StatelessWidget {
  const PayFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: SizeManager.s20, vertical: SizeManager.s50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Price: 3\$",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: SizeManager.s25,
            ),
            AppButton(onPressed: () {}, text: "pay"),
            const SizedBox(
              height: SizeManager.s25,
            ),
            AppButton(onPressed: () {}, text: "cancel", isPrimary: false),
          ],
        ),
      ),
    );
  }
}
