import 'dart:async';

import 'package:rxdart/rxdart.dart';

import '../../../../common/base_view_model/base_view_model.dart';

class BookingViewModel extends BaseViewModel
    with BookingViewModelInput, BookingViewModelOutput {
  int _currentPage = 0;
  final StreamController _pageStreamController = BehaviorSubject<int>();

  @override
  Sink get inputCurrentPage => _pageStreamController.sink;

  @override
  Stream<int> get outputCurrentPage =>
      _pageStreamController.stream.map((index) => index);

  @override
  dispose() {
    _pageStreamController.close();
    return super.dispose();
  }

  @override
  init() {
    inputCurrentPage.add(_currentPage);
    return super.init();
  }

  @override
  int getNextPage() {
    final int next = _currentPage + 1;
    if (next < 2) {
      _currentPage = next;
    }
    inputCurrentPage.add(_currentPage);
    return _currentPage;
  }

  @override
  int getPreviousPage() {
    final int previous = _currentPage - 1;
    if (previous >= 0) {
      _currentPage = previous;
    }
    inputCurrentPage.add(_currentPage);

    return _currentPage;
  }

  @override
  void onPageChanged(int index) {
    _currentPage = index;
    inputCurrentPage.add(_currentPage);
  }
}

abstract class BookingViewModelInput {
  Sink get inputCurrentPage;
  int getNextPage();
  int getPreviousPage();
  void onPageChanged(int index);
}

abstract class BookingViewModelOutput {
  Stream<int> get outputCurrentPage;
}
