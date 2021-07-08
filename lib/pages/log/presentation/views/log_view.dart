import 'package:flutter/material.dart';

class LogView extends StatefulWidget {
  const LogView({Key? key}) : super(key: key);

  @override
  _LogViewState createState() => _LogViewState();
}

class _LogViewState extends State<LogView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log View'),
      ),
    );
  }
}
