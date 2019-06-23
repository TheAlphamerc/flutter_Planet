import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_planets/models/planet.dart';
import 'package:flutter_planets/styles/textStyles.dart';
import 'package:flutter_planets/widget/planetRow.dart';
import 'package:flutter_planets/widget/seperator.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;
  DetailPage(this.planet);
  Widget _getBackGround() {
    return Container(
      child: Image.network(
        planet.backgroundImage,
        fit: BoxFit.cover,
        height: 300,
      ),
      constraints: BoxConstraints.expand(height: 300),
    );
  }

  Widget _getGradient() {
    return Container(
      margin: EdgeInsets.only(top: 190),
      height: 110,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Color(0x00736AB7),
        Color(0xFF7361B7),
      ], stops: [
        0,
        .95
      ], begin: FractionalOffset(0, 0), end: FractionalOffset(0, 1))),
    );
  }

  Widget _getContent() {
    final _overViewTitle = "Overview".toLowerCase();

    return ListView(
      padding: EdgeInsets.fromLTRB(0, 72, 0, 32),
      children: <Widget>[
        PlanetRow(
          planet,
          horizontal: true,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _overViewTitle,
                style: headerTextStyle,
              ),
              Seperator(),
              Text(planet.description, style: commonTextStyle),
            ],
          ),
        )
      ],
    );
  }

  Widget _getToolBarBackButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: BackButton(
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: BoxConstraints.expand(),
      color: Color(0xFF7361B7),
      child: Stack(alignment: AlignmentDirectional.topStart, children: <Widget>[
        _getBackGround(),
        _getGradient(),
        _getContent(),
        _getToolBarBackButton(context)
      ]),
    ));
  }
}
