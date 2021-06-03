import 'package:flutter/material.dart';
import 'package:master_trainer_first/screens/routine/routine_viewmodel.dart';
import 'package:stacked/stacked.dart';

class RoutineView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RoutineViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text('Startup View'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
      viewModelBuilder: () => RoutineViewModel(),
    );
  }
}
