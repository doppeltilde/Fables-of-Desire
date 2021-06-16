import 'package:fablesofdesire/constructor/vn_constructor.dart';
import 'package:flutter/material.dart';

class VNScaffold extends StatefulWidget {
  final bgImage;
  final textSound;
  final route;
  final nextRoute;
  VNScaffold({this.bgImage, this.textSound, this.route, this.nextRoute});
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<VNScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: InkWell(
        onTap: () {
          setState(() {
            if (widget.textSound.isFinished() == true) {
              Navigator.of(context).pushNamed(widget.nextRoute);
            } else {
              widget.textSound.nextQuestion();
            }
          });
        },
        child: InterludeTextSound(
            "assets/images/bgs/" + widget.bgImage + ".jpg",
            widget.textSound.getCorrectAnswer(),
            widget.textSound.getQuestionText(),
            widget.textSound.getNumber(),
            widget.textSound.getImage(),
            widget.route,
            widget.nextRoute),
      ),
    );
  }
}
