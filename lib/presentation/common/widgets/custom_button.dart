import 'package:flutter/material.dart';

import '../../resources/color_manger.dart';
import '../../resources/size_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: SizeManager.s181,
        width: SizeManager.s241,
        padding: const EdgeInsets.symmetric(horizontal: SizeManager.s32),
        decoration: BoxDecoration(
            color: ColorManager.lightBlue,
            borderRadius: BorderRadius.circular(SizeManager.s25)),
        child: Stack(
          children: [
            Center(
                child:
                    Text(text, style: Theme.of(context).textTheme.titleLarge)),
            const Positioned(
              bottom: SizeManager.s10,
              right: SizeManager.s10,
              child: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}
