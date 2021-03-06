import 'package:canes_football_app/widget/roster/roster_item_widget.dart';
import 'package:flutter/material.dart';

class RosterList extends StatefulWidget {
  @override
  _RosterListState createState() => _RosterListState();
}

class _RosterListState extends State<RosterList> {
  ScrollController _scrollController;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        controller: _scrollController,
        itemCount: 100,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                RosterItem(),
                Divider(),
              ],
            ),
          );
        },
      ),
    );
  }
}
