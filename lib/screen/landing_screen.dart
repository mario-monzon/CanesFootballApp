import 'package:canes_football_app/screen/login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  static final routeName = 'landing';
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            body: Container(
              child: Center(
                child: Text('ERROR'),
              ),
            ),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          Navigator.pushNamed(context, LoginScreen.routeName);
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Scaffold(
          body: Container(
            child: Center(
              child: CircularProgressIndicator(
                semanticsLabel: 'Cargando...',
              ),
            ),
          ),
        );
      },
    );
  }
}
