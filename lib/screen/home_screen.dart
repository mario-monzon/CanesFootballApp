import 'package:canes_football_app/widget/canes_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      bottomNavigationBar: CanesNavigationBar(),
      body: Center(
        child: Container(
          child: Text('HomeScreen'),
        ),
      ),
    );
  }
}
