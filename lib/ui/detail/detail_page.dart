import 'package:flutter/material.dart';
import 'package:planets_flutter/model/Planet.dart';
import 'package:planets_flutter/ui/home/planet_summary.dart';
import 'package:planets_flutter/ui/separator.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;

  DetailPage(this.planet);

  _renderBackground() {
    return Container(
        child: Image.network(
      planet.picture,
      fit: BoxFit.cover,
      height: 300.0,
    ));
  }

  _renderGradient() {
    return Container(
        margin: EdgeInsets.only(top: 190.0),
        height: 610.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: <Color>[Color(0x00736AB7), Color(0xFF3E3C5F)],
                stops: [0.0, 0.9],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(0.0, 0.1))));
  }

  TextStyle regularTextStyle() {
    return TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xffb6b2df),
        fontWeight: FontWeight.w400,
        fontSize: 12.0);
  }

  TextStyle headerTextStyle() {
    return TextStyle(
        fontFamily: 'Poppins',
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.w600);
  }

  _renderContent() {
    final _overviewTitle = "Overview".toUpperCase();

    return ListView(
      padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
      children: <Widget>[
        PlanetSummary(
          planet,
          horizontal: false,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _overviewTitle,
                style: headerTextStyle(),
              ),
              Separator(),
              Text(
                planet.description,
                style: regularTextStyle(),
              )
            ],
          ),
        )
      ],
    );
  }

  _renderToolbar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: BackButton(
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: BoxConstraints.expand(),
            color: Color(0xFF736AB7),
            child: Stack(
              children: <Widget>[
                _renderBackground(),
                _renderGradient(),
                _renderContent(),
                _renderToolbar(context),
              ],
            )));
  }
}
