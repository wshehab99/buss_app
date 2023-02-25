import 'package:buss_app/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

import '../../resources/color_manger.dart';
import '../../resources/size_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.controller, this.hint});
  final TextEditingController? controller;
  final String? hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: SizeManager.s20),
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeManager.s20),
          borderSide: const BorderSide(
              color: ColorManager.darkGreyOpacity, width: SizeManager.s1),
        ),
        // focused border style
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeManager.s20),
          borderSide: const BorderSide(
              color: ColorManager.primaryOpacity, width: SizeManager.s1),
        ),

        // error border style
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeManager.s20),
          borderSide: const BorderSide(
              color: ColorManager.error, width: SizeManager.s1),
        ),
        // focused border style
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeManager.s20),
          borderSide: const BorderSide(
              color: ColorManager.primaryOpacity, width: SizeManager.s1),
        ),
      ),
    );
  }
}
