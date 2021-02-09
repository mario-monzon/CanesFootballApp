import 'package:canes_football_app/screen/login/login_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Canes Football',
      home: LoginScreen(),
    );
  }
}
