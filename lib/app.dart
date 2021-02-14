import 'package:canes_football_app/screen/home_screen.dart';
import 'package:canes_football_app/screen/login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return MaterialApp(
            home: Scaffold(
              body: Container(
                child: Center(
                  child: Text('ERROR'),
                ),
              ),
            ),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          print('DONE');
          return MaterialApp(
            title: 'Canes Football',
            initialRoute: LoginScreen.routeName,
            routes: {
              HomeScreen.routeName: (context) => HomeScreen(),
              LoginScreen.routeName: (context) => LoginScreen(),
            },
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return MaterialApp(
          home: Scaffold(
            body: Container(
              child: Center(
                child: CircularProgressIndicator(
                  semanticsLabel: 'Cargando...',
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
