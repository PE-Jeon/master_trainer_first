import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_trainer_first/pages/home/presentation/controller/home_controller.dart';

class SplashPage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Splash Page'),
        ),

      )
    );
  }

}