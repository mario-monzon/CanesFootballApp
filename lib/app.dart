import 'package:canes_football_app/screen/home_screen.dart';
import 'package:canes_football_app/screen/landing_screen.dart';
import 'package:canes_football_app/screen/login/login_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Canes Football',
      initialRoute: LoginScreen.routeName,
      routes: {
        LandingScreen.routeName: (context) => LandingScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}
