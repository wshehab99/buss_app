import 'package:buss_app/app/app_constant.dart';
import 'package:buss_app/app/dependency_injection.dart';
import 'package:buss_app/presentation/booking/pages/booking_form_page.dart';
import 'package:buss_app/presentation/booking/pages/pay_form_page.dart';
import 'package:buss_app/presentation/booking/view_model/booking_view_model.dart';
import 'package:buss_app/presentation/resources/size_manager.dart';
import 'package:buss_app/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class BookingView extends StatefulWidget {
  const BookingView({super.key});

  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {
  final BookingViewModel _viewModel =
      DependencyInjection.instance<BookingViewModel>();
  final PageController _controller = PageController();
  final List<Widget> _pages = [
    BookingFormPage(),
    const PayFormPage(),
  ];
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _viewModel.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
        stream: _viewModel.outputCurrentPage,
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(title: const Text(StringManager.booking)),
            body: snapshot.hasData
                ? Column(
                    children: [
                      Expanded(
                        child: PageView.builder(
                            onPageChanged: _viewModel.onPageChanged,
                            itemCount: _pages.length,
                            controller: _controller,
                            itemBuilder: (context, index) => _pages[index]),
                      ),
                      _getButton(snapshot.data!),
                    ],
                  )
                : const SizedBox(),
          );
        });
  }

  _getButton(int index) {
    return ElevatedButton(
        onPressed: () {
          _controller.animateToPage(
              index == 0
                  ? _viewModel.getNextPage()
                  : _viewModel.getPreviousPage(),
              duration: const Duration(milliseconds: AppConstants.pageDelay),
              curve: Curves.bounceInOut);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: SizeManager.s20),
          child: Text(index == 0 ? StringManager.next : StringManager.previous),
        ));
  }
}
