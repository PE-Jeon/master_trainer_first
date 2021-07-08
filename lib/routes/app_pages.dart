import 'package:get/get.dart';
import 'package:master_trainer_first/pages/home/bindings/home_binding.dart';
import 'package:master_trainer_first/pages/home/presentation/views/home_view.dart';
import 'package:master_trainer_first/pages/home/presentation/views/splashpage.dart';
import 'package:master_trainer_first/pages/setting/presentation/views/setting.dart';

part './app_routes.dart';

abstract class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => SplashPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      children: [
        GetPage(name: Routes.SCHEDULE, page: () => SettingView()),
        GetPage(name: Routes.ROUTINE, page: () => SettingView()),
        GetPage(name: Routes.SETTING, page: () => SettingView()),
      ]
    ),
  ];
}
