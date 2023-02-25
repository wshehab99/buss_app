import 'dart:async';

import 'package:buss_app/presentation/base_view_model/base_view_model.dart';
import 'package:rxdart/rxdart.dart';

class CompanyViewModel extends BaseViewModel
    with CompanyViewModelInput, CompanyViewModelOutput {
  final StreamController _numberOfBussStreamController = BehaviorSubject<int>();
  int _numberOfBuss = 3;
  @override
  Sink get inputNumberOfBuss => _numberOfBussStreamController.sink;

  @override
  Stream<int> get outputNumberOfBuss =>
      _numberOfBussStreamController.stream.map((number) => number);
  @override
  dispose() {
    _numberOfBussStreamController.close();
    return super.dispose();
  }

  @override
  init() {
    inputNumberOfBuss.add(_numberOfBuss);
    return super.init();
  }

  @override
  void addBuss() {
    _numberOfBuss++;
    inputNumberOfBuss.add(_numberOfBuss);
  }
}

abstract class CompanyViewModelInput {
  Sink get inputNumberOfBuss;
  void addBuss();
}

abstract class CompanyViewModelOutput {
  Stream<int> get outputNumberOfBuss;
}
