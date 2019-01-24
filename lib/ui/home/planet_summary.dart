import 'package:flutter/material.dart';
import 'package:planets_flutter/model/Planet.dart';
import 'package:planets_flutter/ui/detail/detail_page.dart';

class PlanetSummary extends StatelessWidget {
  final Planet planet;
  final bool horizontal;

  PlanetSummary(this.planet, {this.horizontal = true});

  PlanetSummary.vertical(this.planet) : horizontal = false;

  renderPlanetThumbnail() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        alignment:
            horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
        child: Hero(
          tag: "planet-hero-${planet.id}",
          child:
              Image(image: AssetImage(planet.image), height: 92.0, width: 92.0),
        ));
  }

  renderPlanetCard() {
    return Container(
      height: horizontal ? 124.0 : 154.0,
      margin:
          horizontal ? EdgeInsets.only(left: 46.0) : EdgeInsets.only(top: 72.0),
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

  _planetValue({String value, String image}) {
    return Container(
      child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Image.asset(image, height: 12.0),
        Container(width: 8.0),
        Text(planet.gravity, style: regularTextStyle()),
      ]),
    );
  }

  renderPlanetCardContent() {
    return Container(
      margin: EdgeInsets.fromLTRB(
          horizontal ? 76.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment:
            horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: horizontal ? 1 : 0,
                child: _planetValue(
                    value: planet.distance,
                    image: 'assets/img/ic_distance.png'),
              ),
              Container(width: 32.0),
              Expanded(
                flex: horizontal ? 1 : 0,
                child: _planetValue(
                    value: planet.gravity, image: 'assets/img/ic_gravity.png'),
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
        onTap: horizontal
            ? () => Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => DetailPage(planet),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          FadeTransition(opacity: animation, child: child),
                ))
            : null,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: Stack(
            children: <Widget>[renderPlanetCard(), renderPlanetThumbnail()],
          ),
        ));
  }
}
