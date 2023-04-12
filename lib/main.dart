import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_app/login.dart';

void main() {
  runApp(MyApp());

  //LogIn login = new LogIn();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login app',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: LogIn(),
    );
  }
}
