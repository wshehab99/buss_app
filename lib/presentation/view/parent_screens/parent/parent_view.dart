import 'package:buss_app/presentation/resources/route_manager.dart';
import 'package:buss_app/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/custom_button.dart';

class ParentView extends StatelessWidget {
  const ParentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(StringManager.welcome)),
      body: Center(
          child: CustomButton(
        text: StringManager.tracking,
        onTap: () {
          Navigator.of(context).pushNamed(RouteManager.tracking);
        },
      )),
    );
  }
}
