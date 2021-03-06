import 'package:canes_football_app/design/canes_text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RosterBasicCell extends StatelessWidget {
  String playerName;
  String playerPosition;

  RosterBasicCell({
    @required this.playerName,
    this.playerPosition,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Nombre: ',
                style: CanesTextStyle.boldL,
              ),
              Text(playerName),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Text(
                'Poisición: ',
                style: CanesTextStyle.boldL,
              ),
              Text(playerPosition),
            ],
          ),
        ],
      ),
    );
  }
}
