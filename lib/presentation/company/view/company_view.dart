import 'package:buss_app/app/dependency_injection.dart';
import 'package:buss_app/presentation/company/view_model/company_view_model.dart';
import 'package:buss_app/presentation/resources/color_manger.dart';
import 'package:buss_app/presentation/resources/size_manager.dart';
import 'package:buss_app/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/text_container.dart';

class CompanyView extends StatefulWidget {
  const CompanyView({super.key});

  @override
  State<CompanyView> createState() => _CompanyViewState();
}

class _CompanyViewState extends State<CompanyView> {
  final CompanyViewModel _viewModel =
      DependencyInjection.instance<CompanyViewModel>();
  @override
  void initState() {
    _viewModel.init();
    super.initState();
  }

// this method run after the widget removed from widget tree or user go next screen
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(StringManager.welcome)),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: SizeManager.s50,
            ),
            _getText(context: context, text: StringManager.numberOfBus),
            const SizedBox(
              height: SizeManager.s50,
            ),
            //listen to change on number of busses
            StreamBuilder<int>(
                stream: _viewModel.outputNumberOfBuss,
                builder: (context, snapshot) {
                  return TextContainer(
                    text: snapshot.data.toString(),
                  );
                }),
            const SizedBox(
              height: SizeManager.s50,
            ),
            _getText(context: context, text: StringManager.people),
            const SizedBox(
              height: SizeManager.s50,
            ),
            const TextContainer(
              text: "60",
            ),
            const SizedBox(
              height: SizeManager.s50,
            ),
            //add bus
            ElevatedButton(
                onPressed: _viewModel.addBuss,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: SizeManager.s20),
                  child: Text(StringManager.addBuss),
                ))
          ],
        ),
      )),
    );
  }

  Widget _getText({required BuildContext context, required String text}) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(color: ColorManager.darkGrey),
    );
  }
}
