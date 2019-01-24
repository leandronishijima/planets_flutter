import 'package:flutter/material.dart';
import 'package:planets_flutter/model/Planet.dart';
import 'package:planets_flutter/ui/detail/detail_page.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow(this.planet);

  Widget renderPlanetThumbnail() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        alignment: FractionalOffset.centerLeft,
        child: Hero(
          tag: "planet-hero-${planet.id}",
          child:
              Image(image: AssetImage(planet.image), height: 92.0, width: 92.0),
        ));
  }

  Widget renderPlanetCard() {
    return Container(
      height: 124.0,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
          color: Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0))
          ]),
      child: renderPlanetCardContent(),
    );
  }

  Widget renderPlanetCardContent() {
    return Container(
      margin: EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 4.0,
          ),
          Text(
            planet.name,
            style: headerTextStyle(),
          ),
          Container(height: 10.0),
          Text(
            planet.location,
            style: regularTextStyle(),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            height: 2.0,
            width: 18.0,
            color: Color(0xff00c6ff),
          ),
          Row(
            children: <Widget>[
              Image.asset("assets/img/ic_distance.png", height: 12.0),
              Container(width: 8.0),
              Text(
                planet.distance,
                style: regularTextStyle(),
              ),
              Container(width: 24.0),
              Image.asset("assets/img/ic_gravity.png", height: 12.0),
              Container(width: 8.0),
              Text(
                planet.gravity,
                style: regularTextStyle(),
              ),
            ],
          )
        ],
      ),
    );
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.of(context).push(
            PageRouteBuilder(pageBuilder: (_, __, ___) => DetailPage(planet))),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: Stack(
            children: <Widget>[renderPlanetCard(), renderPlanetThumbnail()],
          ),
        ));
  }
}
