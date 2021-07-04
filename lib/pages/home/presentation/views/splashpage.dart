import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_trainer_first/pages/home/presentation/views/home_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      print('after 3 second');

      Get.to(() => HomeView());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash View'),
      ),
      body:
        Container(),
    );
  }
}
