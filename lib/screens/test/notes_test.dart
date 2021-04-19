import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class EditNotePage extends StatefulWidget {
  @override
  _EditNotePageState createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Day 1 - Blue Lagoon, Iceland.",
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'BottleParty',
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      """Dear diary,
today was my first day.
This is definitely one of the most beautiful places I've ever seen.
It's quite unique -- a pale blue milky sea in a lava field with a power plant in the background.
I really can't tell you the feelings I had...

I think it's a good start.

I won't write these texts into oblivion and back, I'll keep it short.

Diary out.

""",
                      textStyle: TextStyle(
                        fontFamily: "PxGrotesk",
                        fontSize: 21,
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                  isRepeatingAnimation: false,
                  onNextBeforePause: (_, isLast) {
                    if (isLast) {
                      Navigator.of(context).pushReplacementNamed("/home");
                    }
                  },
                ),
              ),
            ],
          ),
          ClipRect(
            child: Container(
              height: 80,
              child: SafeArea(
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: null,
                    ),
                    Spacer(),
                    IconButton(
                      tooltip: 'Mark note as important',
                      icon: Icon(Icons.outlined_flag),
                      onPressed: null,
                    ),
                    IconButton(
                      icon: Icon(Icons.delete_outline),
                      onPressed: null,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
