import 'package:canes_football_app/model/sponsor_model.dart';
import 'package:canes_football_app/widget/sponsor/sponsor_list_item.dart';
import 'package:flutter/material.dart';

class SponsorGridList extends StatelessWidget {
  const SponsorGridList({Key key, this.sponsorList}) : super(key: key);

  final List<Sponsor> sponsorList;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(10),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: List.generate(sponsorList.length ?? 0, (index) {
          return SponsorListItem(sponsor: sponsorList[index]);
        }));
  }
}
