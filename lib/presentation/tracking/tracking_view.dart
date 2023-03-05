import 'package:buss_app/presentation/resources/color_manger.dart';
import 'package:buss_app/presentation/resources/route_manager.dart';
import 'package:buss_app/presentation/resources/size_manager.dart';
import 'package:buss_app/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

import '../common/widgets/custom_text_field.dart';

class TrackingView extends StatefulWidget {
  const TrackingView({super.key});

  @override
  State<TrackingView> createState() => _TrackingViewState();
}

class _TrackingViewState extends State<TrackingView> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(StringManager.tracking)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: SizeManager.s50),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  StringManager.addUser,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: ColorManager.darkGrey),
                ),
                CustomTextField(
                  controller: _controller,
                  hint: StringManager.username,
                ),
                ElevatedButton(
                    onPressed: () {
                      //navigate and get the name of student to get the location
                      Navigator.of(context).pushNamed(RouteManager.trackingMap,
                          arguments: _controller.text);
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: SizeManager.s20),
                      child: Text(StringManager.next),
                    ))
              ]),
        ),
      ),
    );
  }
}
