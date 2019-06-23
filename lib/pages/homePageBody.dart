import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_planets/models/planet.dart';
import 'package:flutter_planets/scopedModel/connectedPlanets.dart';
import 'package:flutter_planets/widget/planetRow.dart';
import 'package:scoped_model/scoped_model.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<PlanetModel>(
        builder: (BuildContext context, Widget child, PlanetModel model) {
      final List<Planet> _planets = model.allPlanet;
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
                    (context, index) => PlanetRow(_planets[index]),
                    childCount: _planets.length),
              ),
            )
          ],
        ),
      ));
    });
  }
}
