import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 66;
  const GradientAppBar(
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;
    return Container(
        child: Container(
            height: barHeight + statusbarHeight,
            padding: EdgeInsets.only(top: statusbarHeight),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF3366FF), Color(0xFF00CCFF)],
                  begin: FractionalOffset(0, 0),
                  end: FractionalOffset(1.8, 0),
                  stops: [0, 0.5],
                  tileMode: TileMode.clamp),
            ),
            child: Center(
                child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Popins',
                  fontWeight: FontWeight.w600,
                  fontSize: 36),
            ))));
  }
}
