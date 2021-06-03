import 'package:master_trainer_first/repos/locator.dart';
import 'package:master_trainer_first/repos/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RoutineViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToLogin() async {
    await _navigationService.navigateTo(Routes.loginView);
  }
}