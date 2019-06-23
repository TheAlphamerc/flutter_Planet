import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_planets/models/planet.dart';
import 'package:flutter_planets/widget/planetRow.dart';

class HomePageBody extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return Expanded(
  //       child: ListView.builder(
  //     itemBuilder: (context, index) => PlanetRow(planets[index]),
  //     itemCount: planets.length,
  //     itemExtent: 172,
  //     padding: EdgeInsets.symmetric(vertical: 16),
  //   ));
  // }
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: Color(0xFF736AB7),
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 24),
            sliver: SliverFixedExtentList(
              itemExtent: 172,
              
              delegate: SliverChildBuilderDelegate(
                  (context, index) => PlanetRow(planets[index]),childCount: planets.length),
            ),
          )
        ],
      ),
    ));
  }

  List<Planet> planets = [
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
