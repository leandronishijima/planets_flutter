import 'package:flutter/material.dart';
import 'package:planets_flutter/ui/home/PlanetRow.dart';
import 'package:planets_flutter/model/PlanetDao.dart';
import 'package:planets_flutter/model/Planet.dart';

class HomePageBody extends StatelessWidget {
  final List<Planet> planets = PlanetDao.getAllPlanets();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemBuilder: (context, index) => PlanetRow(planets[index]),
      itemCount: planets.length,
    ));
  }
}
