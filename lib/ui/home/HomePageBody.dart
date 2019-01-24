import 'package:flutter/material.dart';
import 'package:planets_flutter/ui/home/planet_summary.dart';
import 'package:planets_flutter/model/PlanetDao.dart';
import 'package:planets_flutter/model/Planet.dart';

class HomePageBody extends StatelessWidget {
  final List<Planet> planets = PlanetDao.getAllPlanets();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: Color(0xFF736AB7),
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 24.0),
            sliver: SliverFixedExtentList(
              itemExtent: 162.0,
              delegate: SliverChildBuilderDelegate(
                  (context, index) => PlanetSummary(planets[index]),
                  childCount: planets.length),
            ),
          )
        ],
      ),
    ));
  }
}
