import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_planets/helper/custom_route.dart';
import 'package:flutter_planets/models/planet.dart';
import 'package:flutter_planets/pages/detailPage.dart';
import 'package:flutter_planets/pages/homePageBody.dart';
import 'package:flutter_planets/scopedModel/connectedPlanets.dart';
import 'package:flutter_planets/widget/gradientAppBar.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final PlanetModel planetModel = PlanetModel();
  @override
  Widget build(BuildContext context) {
    Planet planet;
    return ScopedModel(
        model: planetModel,
        child: MaterialApp(
            title: 'Planets',
            theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Poppins'),
            routes: <String, WidgetBuilder>{
              '/': (_) => MyHomePage(),
              '/detail': (_) => DetailPage(planet)
            },
            onGenerateRoute: (RouteSettings settings) {
              final List<String> pathElements = settings.name.split('/');
              if (pathElements[0] == '') {
                return null;
              }
              if (pathElements[0] == 'detail') {
                final String planetId = pathElements[1];
                Planet planet = planetModel.allPlanet.firstWhere((x) {
                  return x.id == planetId;
                });
                return CustomRoute<bool>(
                    builder: (BuildContext context) => DetailPage(planet));
              } else if (settings.name.contains('detail')) {
                return CustomRoute<bool>(
                    builder: (BuildContext context) => DetailPage(planet));
              }
            }));
  }
}

class MyHomePage extends StatefulWidget {
  final PlanetModel planetModel = PlanetModel();
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          GradientAppBar("trevia"),
          HomePageBody(),
        ],
      ),
    );
  }
}
