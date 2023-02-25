import 'package:buss_app/presentation/common/widgets/custom_text_field.dart';
import 'package:buss_app/presentation/resources/size_manager.dart';
import 'package:buss_app/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class BookingFormPage extends StatelessWidget {
  BookingFormPage({super.key});
  final TextEditingController _from = TextEditingController();
  final TextEditingController _to = TextEditingController();
  final TextEditingController _time = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: SizeManager.s20, vertical: SizeManager.s50),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomTextField(
              controller: _from,
              hint: StringManager.from,
            ),
            const SizedBox(
              height: SizeManager.s25,
            ),
            CustomTextField(
              controller: _to,
              hint: StringManager.to,
            ),
            const SizedBox(
              height: SizeManager.s25,
            ),
            CustomTextField(
              controller: _time,
              hint: StringManager.time,
            ),
          ]),
        ),
      ),
    );
  }
}
