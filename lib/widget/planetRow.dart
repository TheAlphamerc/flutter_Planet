import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_planets/models/planet.dart';
import 'package:flutter_planets/styles/textStyles.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  const PlanetRow(this.planet);
  Widget planetThumbnail() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      alignment: FractionalOffset.centerLeft,
      child: Image(image: AssetImage(planet.image), height: 92, width: 92),
    );
  }

  Widget planetCard() {
    return Container(
      height: 160,
      margin: EdgeInsets.only(left: 46),
      decoration: BoxDecoration(
          color: Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black12, blurRadius: 10, offset: Offset(0, 10))
          ]),
      alignment: FractionalOffset.centerLeft,
      child: planetCardContent(),
    );
  }

  Widget _planetValue({String image, String value}) {
    return Row(
      children: <Widget>[
        Image.asset(image, height: 12),
        Container(width: 8),
        Text(
          value,
          style: regularTextStyle,
        ),
        Container(width: 24),
      ],
    );
  }

  Widget planetCardContent() {
    return Container(
      margin: EdgeInsets.fromLTRB(76, 16, 16, 16),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 4.0,
          ),
          Text(
            planet.name,
            style: headerTextStyle,
          ),
          Container(height: 10),
          Text(
            planet.location,
            style: subHeaderTextStyle,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            height: 2,
            width: 18,
            color: Color(0xFF00C6ff),
          ),
          Row(
            children: <Widget>[
              _planetValue(
                  image: "assets/img/ic_distance.png", value: planet.distance),
              Container(width: 24),
              _planetValue(
                  image: "assets/img/ic_gravity.png", value: planet.gravity)
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Stack(
        children: <Widget>[planetCard(), planetThumbnail()],
      ),
    );
  }
}
