import 'package:planets_flutter/model/Planet.dart';

class PlanetDao {
  static List<Planet> getAllPlanets() {
    return [
      const Planet(
        id: "1",
        name: "Mars",
        location: "Milkyway Galaxy",
        distance: "54.6m Km",
        gravity: "3.711 m/s ",
        description: "Lorem ipsum...",
        image: "assets/img/mars.png",
      ),
      const Planet(
        id: "2",
        name: "Neptune",
        location: "Milkyway Galaxy",
        distance: "54.6m Km",
        gravity: "3.711 m/s ",
        description: "Lorem ipsum...",
        image: "assets/img/neptune.png",
      ),
      const Planet(
        id: "3",
        name: "Moon",
        location: "Milkyway Galaxy",
        distance: "54.6m Km",
        gravity: "3.711 m/s ",
        description: "Lorem ipsum...",
        image: "assets/img/moon.png",
      ),
      const Planet(
        id: "4",
        name: "Earth",
        location: "Milkyway Galaxy",
        distance: "54.6m Km",
        gravity: "3.711 m/s ",
        description: "Lorem ipsum...",
        image: "assets/img/earth.png",
      ),
      const Planet(
        id: "5",
        name: "Mercury",
        location: "Milkyway Galaxy",
        distance: "54.6m Km",
        gravity: "3.711 m/s ",
        description: "Lorem ipsum...",
        image: "assets/img/mercury.png",
      ),
    ];
  }

  static getPlanetById(id) {
    return getAllPlanets().firstWhere((planet) => planet.id == id);
  }
}
