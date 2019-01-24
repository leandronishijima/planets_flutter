import 'package:flutter/material.dart';
import 'package:planets_flutter/model/Planet.dart';

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
                colors: <Color>[Color(0x00736AB7), Color(0xFF736AB7)],
                stops: [0.0, 0.9],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(0.0, 0.1))));
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
                Hero(
                    tag: "planet-hero-${planet.id}",
                    child: Image.asset(
                      planet.image,
                      width: 96,
                      height: 96.0,
                    ))
              ],
            )));
  }
}
