import 'package:flutter/material.dart';

class ChibiNeutral extends StatelessWidget {
  final chibiImg;
  ChibiNeutral({this.chibiImg});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 5,
          height: MediaQuery.of(context).size.height / 3,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).cardColor,
            image: DecorationImage(
              image:
                  AssetImage("assets/images/sprites/Cast/" + chibiImg + ".png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Text(
          "Here Chibi Art",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ],
    );
  }
}

class ChibiHappy extends StatelessWidget {
  final chibiImg;
  ChibiHappy({this.chibiImg});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 5,
          height: MediaQuery.of(context).size.height / 3,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).cardColor,
            image: DecorationImage(
              image:
                  AssetImage("assets/images/sprites/Cast/" + chibiImg + ".png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Text(
          "Here Chibi Art",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ],
    );
  }
}
