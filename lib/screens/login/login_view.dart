import 'package:flutter/material.dart';
import 'package:master_trainer_first/screens/login/login_viewmodel.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text(model.title),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => model.navigateToRoutine(),
          child: SizedBox(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
