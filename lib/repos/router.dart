

import 'package:auto_route/auto_route_annotations.dart';
import 'package:master_trainer_first/screens/login/login_view.dart';
import 'package:master_trainer_first/screens/routine/routine_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute> [
    MaterialRoute(page: LoginView, initial: true),
    MaterialRoute(page: RoutineView),
 ]
)

class $Router {}