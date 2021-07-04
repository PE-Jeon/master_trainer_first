import 'package:get/get.dart';
import 'package:master_trainer_first/pages/home/presentation/controller/home_controller.dart';

class HomeBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}