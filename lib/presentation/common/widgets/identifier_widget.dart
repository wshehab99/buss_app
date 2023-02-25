import 'package:buss_app/presentation/resources/color_manger.dart';
import 'package:buss_app/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

import '../../resources/size_manager.dart';

class IdentifierWidget extends StatelessWidget {
  const IdentifierWidget({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: SizeManager.s181,
        padding: const EdgeInsets.symmetric(horizontal: SizeManager.s32),
        decoration: BoxDecoration(
            color: ColorManager.lightBlue,
            borderRadius: BorderRadius.circular(SizeManager.s25)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(StringManager.iAm,
                style: Theme.of(context).textTheme.titleMedium),
            Text(text, style: Theme.of(context).textTheme.titleLarge),
            const Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
