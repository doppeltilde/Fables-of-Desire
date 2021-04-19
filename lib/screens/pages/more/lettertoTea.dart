import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class LetterToTea extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

/// The main widget state.
class _BaseScreenState extends State<LetterToTea> {
  String? _name;
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefValue) => {
          setState(() {
            _name = prefValue.getString('letterTea');
          })
        });
    isLightValues();
  }

  bool isLightTheme = true;

  @override
  void dispose() {
    super.dispose();
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

  final ScrollController _sliverScrollController = ScrollController();
  var isPinned = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        controller: _sliverScrollController,
        slivers: <Widget>[
          SliverAppBar(
            brightness: Brightness.dark,
            backgroundColor: Colors.black,
            leading: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            pinned: false,
            elevation: 0.4,
          ),
          SliverPadding(
            padding: EdgeInsets.all(0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  new Container(
                    child: Center(
                      child: new Column(
                        // center the children
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          heading("Letter to Tea"),
                          SizedBox(
                            height: 20,
                          ),
                          Builder(
                            builder: (context) {
                              if (_name == null || _name!.isEmpty) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      top: 5.0, bottom: 5, left: 30, right: 30),
                                  child: Text(
                                    "Goodbye, Tea.",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontFamily: "Arvo",
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                );
                              } else {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      top: 5.0, bottom: 5, left: 30, right: 30),
                                  child: Text(
                                    "$_name",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontFamily: "Arvo",
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                );
                              }
                            },
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 2,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("/endcredits");
                            },
                            child: Container(
                              height: 55,
                              margin: EdgeInsets.symmetric(
                                horizontal: 10,
                              ).copyWith(
                                bottom: 20,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.home_outlined,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "Go to Main Menu",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontFamily: "SpaceMono"),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.chevron_right_rounded,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 55,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget textUrl(url, text) {
  return GestureDetector(
    onTap: () async {
      url = url;
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    },
    child: new Text(
      text,
      textAlign: TextAlign.center,
      style: new TextStyle(
        decoration: TextDecoration.underline,
        fontSize: 21.0,
        color: Colors.white,
        fontFamily: "SpaceMono",
      ),
    ),
  );
}

Widget heading(text) {
  return new Padding(
    padding: EdgeInsets.only(top: 30.0, bottom: 5, left: 30, right: 30),
    child: new Text(
      text,
      style: new TextStyle(
        fontSize: 30.0,
        color: Colors.white,
        fontFamily: "BottleParty",
      ),
    ),
  );
}
