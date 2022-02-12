import 'package:flutter/material.dart';

void main() {
  runApp(Flag());
}

class Flag extends StatelessWidget {
  const Flag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Bayrak(xyz: 200,),);
  }
}


class Bayrak extends StatelessWidget {
  double xyz = 0;

  Bayrak({required this.xyz});

  @override
  Widget build(BuildContext context) {
    Widget redBox = Container(
    width: 1.5 * xyz,
      height: xyz,
      color: Colors.red,
    );
    Widget circle_out = Container(
      height:  0.5 * xyz,
      width:  0.5 * xyz,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(0.25 * xyz)),
    );
    Widget circle_in = Container(
      width: 0.4 * xyz,
      height: 0.4 * xyz,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(0.4 * xyz)),
    );
    Widget star = Icon(
      Icons.star,
      size: 0.25 * xyz,
      color: Colors.white,
    );



    return Center(
      child: Stack(
        children: [
          redBox,
         Positioned(
             top:0.25*xyz,
             left:0.25*xyz,
             child: circle_out),
          Positioned(
          top:0.3*xyz,
            left:0.3625*xyz,
            child: circle_in,
          ),
          Positioned(
            left: 0.65 * xyz,
            top: 0.380 * xyz,
            child: Transform(transform: Matrix4.rotationZ(-0.2), child: star),
          ),

        ],
      ),
    );
  }
}

