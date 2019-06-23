import 'package:flutter_planets/models/planet.dart';
import 'package:scoped_model/scoped_model.dart';

class ConnectedPlanetsModel extends Model {
  List<Planet> _products = [
    Planet(
      id: "1",
      name: "Mars",
      location: "Milkyway Galaxy",
      distance: "227.9m Km",
      gravity: "3.711 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/mars.png",
    ),
    Planet(
      id: "2",
      name: "Neptune",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "11.15 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/neptune.png",
    ),
    Planet(
      id: "3",
      name: "Moon",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "1.622 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/moon.png",
    ),
    Planet(
      id: "4",
      name: "Earth",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "9.807 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/earth.png",
    ),
    Planet(
      id: "5",
      name: "Mercury",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.7 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/mercury.png",
    ),
  ];
}

class PlanetModel extends ConnectedPlanetsModel {
  List<Planet> get allPlanet {
    return List.from(_products);
  }
}
