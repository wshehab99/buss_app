import 'package:flutter/material.dart';

import '../../resources/color_manger.dart';
import '../../resources/size_manager.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeManager.s80,
      width: SizeManager.s241,
      padding: const EdgeInsets.symmetric(horizontal: SizeManager.s32),
      decoration: BoxDecoration(
          color: ColorManager.lightBlue,
          borderRadius: BorderRadius.circular(SizeManager.s25)),
      child: Center(
          child: Text(text, style: Theme.of(context).textTheme.titleLarge)),
    );
  }
}
