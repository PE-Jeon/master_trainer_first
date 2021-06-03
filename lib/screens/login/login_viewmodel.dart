import 'package:master_trainer_first/repos/locator.dart';
import 'package:master_trainer_first/repos/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  String _title = 'Home View';
  String get title => '$_title counter:$counter';

  int _counter = 0;
  int get counter => _counter;

  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToRoutine() async {
    await _navigationService.navigateTo(Routes.routineView);
  }

  void updateCounter() {
    _counter++;
    notifyListeners();
  }

}