import 'dart:io';

import 'package:get/get.dart';
import 'package:master_trainer_first/pages/home/domain/adapters/repository_adapter.dart';
import 'package:master_trainer_first/pages/home/domain/entity/cases_model.dart';

class HomeController extends SuperController<CasesModel> {
  // HomeController({required this.homeRepository});

  // final IHomeRepository homeRepository;
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    print('changeTabIndex');
    print(index);
    tabIndex.value = index;
    print(tabIndex.value);
  }

  @override
  void onInit() {
    super.onInit();

    //Loading, Success, Error handle with 1 line of code
    // append(() => homeRepository.getCases);
  }

  @override
  void onReady() {
    print('The build method is done. '
        'Your controller is ready to call dialogs and snackbars');
    super.onReady();
  }

  @override
  void onClose() {
    print('onClose called');
    super.onClose();
  }

  @override
  void didChangeMetrics() {
    print('the window size did change');
    super.didChangeMetrics();
  }

  @override
  void didChangePlatformBrightness() {
    print('platform change ThemeMode');
    super.didChangePlatformBrightness();
  }

  @override
  Future<bool> didPushRoute(String route) {
    print('the route $route will be open');
    return super.didPushRoute(route);
  }

  @override
  Future<bool> didPopRoute() {
    print('the current route will be closed');
    return super.didPopRoute();
  }

  @override
  void onDetached() {
    print('onDetached called');
  }

  @override
  void onInactive() {
    print('onInative called');
  }

  @override
  void onPaused() {
    print('onPaused called');
  }

  @override
  void onResumed() {
    print('onResumed called');
  }

}