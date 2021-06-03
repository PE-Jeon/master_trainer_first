import 'dart:io';

import 'package:flutter/material.dart';
import 'package:master_trainer_first/example_ui.dart';
import 'package:master_trainer_first/repos/locator.dart';
import 'package:master_trainer_first/repos/router.gr.dart' as app_router;

void main() async {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final _router = app_router.Router();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kcPrimaryColor,
      ),
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),

      // initialRoute: auto_router.LoginViewRoute.name,
      // onGenerateRoute: auto_router.Router().onGenerateRoute,
    );
  }
}

