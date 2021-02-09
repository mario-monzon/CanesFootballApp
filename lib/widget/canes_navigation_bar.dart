import 'package:canes_football_app/design/canes_color.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CanesNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<TabItem> _items = [
      TabItem(title: 'Roster', icon: FontAwesomeIcons.footballBall),
      TabItem(title: 'Eventos', icon: FontAwesomeIcons.calendar),
      TabItem(title: 'Noticias', icon: FontAwesomeIcons.newspaper),
      TabItem(title: 'Patrocinio', icon: FontAwesomeIcons.handshake),
      TabItem(title: 'Contacto', icon: FontAwesomeIcons.envelope),
    ];
    return ConvexAppBar(
      initialActiveIndex: 3,
      style: TabStyle.flip,
      curve: Curves.fastLinearToSlowEaseIn,
      color: Colors.black,
      activeColor: Colors.black,
      backgroundColor: CanesColor.colorBrand,
      items: _items,
    );
  }
}
