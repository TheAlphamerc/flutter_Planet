import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_planets/models/planet.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;
  DetailPage(this.planet);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Planet detail'),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          color: Color(0xFF7361B7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(planet.name),
              Hero(
                  tag: planet.id,
                  child: Image.asset(planet.image, height: 96, width: 96))
            ],
          ),
        ));
  }
}
