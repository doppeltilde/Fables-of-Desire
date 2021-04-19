import 'dart:ui';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:fablesofdesire/screens/test/animation_test.dart';
import 'package:fablesofdesire/screens/test/notes_test.dart';
import 'package:fablesofdesire/screens/test/sprite_test.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'more.dart';

class Chapters extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChaptersPage();
}

class _ChaptersPage extends State<Chapters> {
  PurchaserInfo? _purchaserInfo;

  Future<void> initPlatformState() async {
    await Purchases.setDebugLogsEnabled(true);
    await Purchases.setup("dRodsutvKmmLBIyWWCJggMKnSwPywfde");
    PurchaserInfo purchaserInfo = await Purchases.getPurchaserInfo();

    if (!mounted) return;
    setState(() {
      _purchaserInfo = purchaserInfo;
    });
  }

  bool isLightTheme = true;

  @override
  void initState() {
    FlameAudio.bgm.stop();
    super.initState();
    isLightValues();
    initPlatformState();
    getSharedPrefs();
    _sliverScrollController.addListener(() {
      if (!isPinned &&
          _sliverScrollController.hasClients &&
          _sliverScrollController.offset > kToolbarHeight) {
        setState(() {
          isPinned = true;
        });
      } else if (isPinned &&
          _sliverScrollController.hasClients &&
          _sliverScrollController.offset < kToolbarHeight) {
        setState(() {
          isPinned = false;
        });
      }
    });
  }

  isLightValues() async {
    isLightTheme = await isLight();
    setState(() {});
  }

  Future<bool> isLight() async {
    final settings = await Hive.openBox('settings');
    bool isLightTheme = settings.get('isLightTheme') ?? true;
    return isLightTheme;
  }

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      chapters = (prefs.getBool('chapterState'));
      chapters2 = (prefs.getBool('chapterTwoState'));
    });
  }

  bool? chapters;
  bool? chapters2;

  final ScrollController _sliverScrollController = ScrollController();
  var isPinned = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomScrollView(controller: _sliverScrollController, slivers: <
            Widget>[
          SliverAppBar(
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back,
                color: isPinned ? Colors.black : Colors.white,
                size: 30,
              ),
            ),
            actions: [
              RestorePurchase(),
            ],
            pinned: true,
            elevation: 0.4,
            expandedHeight: MediaQuery.of(context).size.height / 4,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.zero,
              centerTitle: true,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(),
                  ),
                  Flexible(
                    child: Text(
                      "Load game",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: "BottleParty"),
                    ),
                  ),
                ],
              ),
              background: new Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/main.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: new BoxDecoration(
                      color: Colors.black.withOpacity(isLightTheme ? 0 : 0.4)),
                ),
              ),
            ),
          ),
          SliverPadding(
              padding: EdgeInsets.all(0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    new Center(
                      child: new Container(
                        child: new SingleChildScrollView(
                          child: new Column(
                            // center the children
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 50),
                              buttons(chapters, "/episode1",
                                  'Book One\nA new beginning'),
                              buttons(
                                  chapters2, "/book211", 'Book Two\nReunion'),
                              Builder(
                                builder: (context) {
                                  if (_purchaserInfo == null) {
                                    return CircularProgressIndicator();
                                  } else {
                                    var isPro = _purchaserInfo!
                                        .entitlements.active
                                        .containsKey("pro");
                                    if (isPro) {
                                      return Column(
                                        children: [
                                          buttons(chapters, "/book211",
                                              'Book Three\nReunion'),
                                        ],
                                      );
                                    } else {
                                      return SizedBox.shrink();
                                    }
                                  }
                                },
                              ),
                              Builder(
                                builder: (context) {
                                  if (true) {
                                    return new Column(
                                        // center the children
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SpriteTest()),
                                              );
                                            },
                                            child: Text("Sprite Test"),
                                          ),
                                          Divider(),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AnimationTest()),
                                              );
                                            },
                                            child: Text("Animation Test"),
                                          ),
                                          Divider(),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        EditNotePage()),
                                              );
                                            },
                                            child: Text("Notes Test"),
                                          ),
                                          Divider(),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pushNamed("/PrefTestName");
                                            },
                                            child: Text("Pref Test"),
                                          ),
                                          Divider(),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pushNamed("/SpriteTest");
                                            },
                                            child: Text("Sprite Test"),
                                          ),
                                          Divider(),
                                          new Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: new ElevatedButton(
                                              child: Text(
                                                'End Credits',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "SpaceMono"),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 4.0,
                                                  padding: EdgeInsets.only(
                                                      top: 20,
                                                      bottom: 20,
                                                      left: 30,
                                                      right: 30)),
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pushNamed('/endcredits');
                                              },
                                            ),
                                          ),
                                          new Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: new ElevatedButton(
                                              child: Text(
                                                'FEELS',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "SpaceMono"),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 4.0,
                                                  padding: EdgeInsets.only(
                                                      top: 20,
                                                      bottom: 20,
                                                      left: 30,
                                                      right: 30)),
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pushNamed('/feels');
                                              },
                                            ),
                                          ),
                                          new Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: new ElevatedButton(
                                              child: Text(
                                                'Chapter 1 - The first Day',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "SpaceMono"),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 4.0,
                                                  padding: EdgeInsets.only(
                                                      top: 20,
                                                      bottom: 20,
                                                      left: 30,
                                                      right: 30)),
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pushNamed('/book220');
                                              },
                                            ),
                                          ),
                                          new Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: new ElevatedButton(
                                              child: Text(
                                                'Chapter 2 - New Years Eve',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "SpaceMono"),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 4.0,
                                                  padding: EdgeInsets.only(
                                                      top: 20,
                                                      bottom: 20,
                                                      left: 30,
                                                      right: 30)),
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pushNamed("/episode2-7");
                                              },
                                            ),
                                          ),
                                          new Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: new ElevatedButton(
                                              child: Text(
                                                'Book 2, Chapter 1',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "SpaceMono"),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 4.0,
                                                  padding: EdgeInsets.only(
                                                      top: 20,
                                                      bottom: 20,
                                                      left: 30,
                                                      right: 30)),
                                              onPressed: () async {
                                                Navigator.of(context)
                                                    .pushNamed("/book241");
                                              },
                                            ),
                                          ),
                                          new Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: new ElevatedButton(
                                              child: Text(
                                                'ACT ONE - THREE',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "SpaceMono"),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 4.0,
                                                  padding: EdgeInsets.only(
                                                      top: 20,
                                                      bottom: 20,
                                                      left: 30,
                                                      right: 30)),
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pushNamed("/chapterthree");
                                              },
                                            ),
                                          ),
                                          new Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: new ElevatedButton(
                                              child: Text(
                                                'BOOK 2 - 2',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "SpaceMono"),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 4.0,
                                                  padding: EdgeInsets.only(
                                                      top: 20,
                                                      bottom: 20,
                                                      left: 30,
                                                      right: 30)),
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pushNamed("/book300");
                                              },
                                            ),
                                          ),
                                          new Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: new ElevatedButton(
                                              child: Text(
                                                'BOOK 3',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "SpaceMono"),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 4.0,
                                                  padding: EdgeInsets.only(
                                                      top: 20,
                                                      bottom: 20,
                                                      left: 30,
                                                      right: 30)),
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pushNamed("/bookf001a");
                                              },
                                            ),
                                          ),
                                          new Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: new ElevatedButton(
                                              child: Text(
                                                'BOOK TWO - REUNION',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "SpaceMono"),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 4.0,
                                                  padding: EdgeInsets.only(
                                                      top: 20,
                                                      bottom: 20,
                                                      left: 30,
                                                      right: 30)),
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pushNamed("/book211");
                                              },
                                            ),
                                          ),
                                          new Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: new ElevatedButton(
                                              child: Text(
                                                'BOOK TWO - BACK AGAIN',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "SpaceMono"),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 4.0,
                                                  padding: EdgeInsets.only(
                                                      top: 20,
                                                      bottom: 20,
                                                      left: 30,
                                                      right: 30)),
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pushNamed("/book228");
                                              },
                                            ),
                                          ),
                                          new Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: new ElevatedButton(
                                              child: Text(
                                                'BOOK 1 - Restaurant',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "SpaceMono"),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 4.0,
                                                  padding: EdgeInsets.only(
                                                      top: 20,
                                                      bottom: 20,
                                                      left: 30,
                                                      right: 30)),
                                              onPressed: () async {
                                                Navigator.of(context)
                                                    .pushNamed("/episode1-7");
                                              },
                                            ),
                                          ),
                                          new Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: new ElevatedButton(
                                              child: Text(
                                                'BOOK ENDING',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "SpaceMono"),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 4.0,
                                                  padding: EdgeInsets.only(
                                                      top: 20,
                                                      bottom: 20,
                                                      left: 30,
                                                      right: 30)),
                                              onPressed: () async {
                                                Navigator.of(context)
                                                    .pushNamed("/book4e1");
                                              },
                                            ),
                                          ),
                                          onlyButton(
                                              'Chapter 3 - A Great Decision',
                                              "/bookf009"),
                                          onlyButton('Purchase Screen',
                                              "/chapter2ending"),
                                          buttons(
                                            "input",
                                            "/book301",
                                            'Book2 - Clara',
                                          ),
                                          buttons("input", "/bookf009",
                                              'Book3 - Choice Friendship'),
                                        ]);
                                  } else {
                                    return SizedBox(
                                      height: 0,
                                    );
                                  }
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ]));
  }

  Widget onlyButton(text, route) {
    return new Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: new ElevatedButton(
        child: Text(
          text,
          style: TextStyle(fontSize: 18, fontFamily: "SpaceMono"),
        ),
        style: ElevatedButton.styleFrom(
            elevation: 4.0,
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30)),
        onPressed: () async {
          Navigator.of(context).pushNamed(route);
        },
      ),
    );
  }

  Widget buttons(input, route, text) {
    return Builder(builder: (context) {
      if (input == true) {
        return Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            height: 70,
            width: double.infinity,
            child: new ElevatedButton(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18,
                    fontFamily: "SpaceMono"),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 4.0,
                primary: Theme.of(context).accentColor,
              ),
              onPressed: () async {
                Navigator.of(context).pushNamed(route);
              },
            ),
          ),
        );
      } else {
        return SizedBox(
          height: 0,
        );
      }
    });
  }
}
