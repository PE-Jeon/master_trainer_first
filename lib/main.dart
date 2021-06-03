import 'dart:io';

import 'package:flutter/material.dart';
import 'package:master_trainer_first/example_ui.dart';
import 'package:master_trainer_first/repos/locator.dart';
import 'package:master_trainer_first/repos/router.gr.dart' as auto_router;
import 'package:stacked_services/stacked_services.dart';

void main() async {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final _router = auto_router.Router();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kcPrimaryColor,
      ),

      initialRoute: auto_router.Routes.loginView,
      onGenerateRoute: auto_router.Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}

