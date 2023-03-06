import 'package:buss_app/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

import '../../../resources/size_manager.dart';

class ViewBookingView extends StatelessWidget {
  const ViewBookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(StringManager.viewBooking)),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: SizeManager.s20, vertical: SizeManager.s50),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome: User",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: SizeManager.s25,
              ),
              Text(
                "from tanta to almansora at 7:00 AM",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: SizeManager.s25,
              ),
              Text(
                "Price: 3\$",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: SizeManager.s25,
              ),
            ]),
      ),
    );
  }
}
