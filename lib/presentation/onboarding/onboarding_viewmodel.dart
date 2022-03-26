import 'dart:async';

import 'package:advanced_flutter/domain/model.dart';
import 'package:advanced_flutter/presentation/base/baseviewmodel.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutpts {
  //Stream Controllers
  final StreamController _streamController =
      StreamController<SliderViewObject>();
  //Inputs
  @override
  void dispose() {}

  @override
  void start() {}

  @override
  void goNext() {}

  @override
  void goPrevious() {}

  @override
  void onPageChanged(int index) {}
}

//input means the orders that our view model will receieve from our view
abstract class OnBoardingViewModelInputs {
  void goNext();
  void goPrevious();
  void onPageChanged(int index);

  //add data to the stram .. stream input
  Sink get inputSliderViewObject;
}

//output means the data or result that will be sent from our view model to our view
abstract class OnBoardingViewModelOutpts {
  Stream<SliderViewObject> get outputSliderViewObject;
}

class SliderViewObject {
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;
  SliderViewObject(this.sliderObject, this.numOfSlides, this.currentIndex);
}
