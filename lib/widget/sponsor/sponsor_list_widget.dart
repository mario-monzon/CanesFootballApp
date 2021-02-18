import 'package:canes_football_app/design/img.dart';
import 'package:canes_football_app/model/sponsor_model.dart';
import 'package:canes_football_app/widget/sponsor/sponsor_grid_list.dart';
import 'package:flutter/material.dart';

class SponsorListWidget extends StatefulWidget {
  SponsorListWidget({
    Key key,
  }) : super(key: key);

  @override
  _SponsorListWidgetState createState() => _SponsorListWidgetState();
}

class _SponsorListWidgetState extends State<SponsorListWidget> {
  List<Sponsor> sponsorList;

  @override
  void initState() {
    sponsorList = List();

    Sponsor _sponsor = Sponsor(
        name: 'Sponsor',
        logo: Img.canes,
        web: 'http://teldecanes.es/index.php/en/');

    for (int i = 0; i < 5; i++) {
      sponsorList.add(_sponsor);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SponsorGridList(
          sponsorList: sponsorList,
        )
      ],
    );
  }
}
