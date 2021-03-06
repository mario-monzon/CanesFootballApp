import 'package:canes_football_app/design/img.dart';
import 'package:canes_football_app/widget/roster/roster_basic_cell.dart';
import 'package:flutter/material.dart';

class RosterItem extends StatefulWidget {
  @override
  _RosterItemState createState() => _RosterItemState();
}

class _RosterItemState extends State<RosterItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              print('Roster Detail');
            },
            child: Container(
              width: 100,
              child: Image.asset(Img.canes),
            ),
          ),
          RosterBasicCell(
            playerName: 'Nombre Apellido Apellido',
            playerPosition: '',
          ),
        ],
      ),
    );
  }
}
