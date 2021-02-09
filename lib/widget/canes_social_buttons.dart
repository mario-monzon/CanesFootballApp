import 'package:canes_football_app/design/canes_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CanesSocialButtons extends StatefulWidget {
  @override
  _CanesSocialButtonsState createState() => _CanesSocialButtonsState();
}

class _CanesSocialButtonsState extends State<CanesSocialButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: Icon(
              FontAwesomeIcons.globe,
              color: CanesColor.defaultColor,
            ),
            backgroundColor: CanesColor.colorBrand,
            mini: true,
            onPressed: () {},
          ),
          FloatingActionButton(
            child: Icon(
              FontAwesomeIcons.phone,
              color: CanesColor.defaultColor,
            ),
            backgroundColor: CanesColor.colorBrand,
            mini: true,
            onPressed: () {},
          ),
          FloatingActionButton(
            child: Icon(
              FontAwesomeIcons.instagram,
              color: CanesColor.defaultColor,
            ),
            backgroundColor: CanesColor.colorBrand,
            mini: true,
            onPressed: () {},
          ),
          FloatingActionButton(
            child: Icon(
              FontAwesomeIcons.twitter,
              color: CanesColor.defaultColor,
            ),
            backgroundColor: CanesColor.colorBrand,
            mini: true,
            onPressed: () {},
          ),
          FloatingActionButton(
            child: Icon(
              FontAwesomeIcons.facebook,
              color: CanesColor.defaultColor,
            ),
            backgroundColor: CanesColor.colorBrand,
            mini: true,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
