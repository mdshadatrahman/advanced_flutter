abstract class BaseViewModel extends BaseViewModelInputs
    with BaseViewModelOutputs {
  //Shared variables and functions that will be used thorught any view model
}

abstract class BaseViewModelInputs {
  void start(); //will be called while init. of view model.
  void dispose(); //will be called when viewmodel dies.
}

abstract class BaseViewModelOutputs {}
