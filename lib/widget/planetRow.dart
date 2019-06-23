import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlanetRow extends StatelessWidget {
  Widget planetThumbnail() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      alignment: FractionalOffset.centerLeft,
      child: Image(
          image: AssetImage('assets/img/mars.png'), height: 92, width: 92),
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
