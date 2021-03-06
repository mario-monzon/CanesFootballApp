import 'package:canes_football_app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    // systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}
