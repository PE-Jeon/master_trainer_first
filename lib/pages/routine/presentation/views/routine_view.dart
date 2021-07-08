import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_trainer_first/pages/routine/presentation/controller/routine_controller.dart';

class RoutineView extends GetView<RoutineController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routine View'),
      ),
      body: Container(),
    );
  }
}