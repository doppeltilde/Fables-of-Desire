import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fablesofdesire/screens/pages/more/animation.dart';
import 'package:fablesofdesire/screens/pages/more/more.dart';
import 'package:shared_preferences/shared_preferences.dart';

//
// BOOL TEST
//

class PrefTest extends StatefulWidget {
  @override
  _PrefTest createState() => _PrefTest();
}

class _PrefTest extends State<PrefTest> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(seconds: 0), () {
    //   Navigator.of(context).pushNamed('/prefTrue');
    // });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(context),
      child: new Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            new Center(
              child: new Container(
                child: SafeArea(
                  child: new SingleChildScrollView(
                    child: new Column(
                      // center the children
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextButton(
                            onPressed: () async {
                              final prefs =
                                  await SharedPreferences.getInstance();
                              prefs.setBool('friendship', true);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PrefTrue()),
                              );
                            },
                            child: Text("TRUE")),
                        Divider(),
                        TextButton(
                            onPressed: () async {
                              final prefs =
                                  await SharedPreferences.getInstance();
                              prefs.setBool('friendship', false);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PrefTrue()),
                              );
                            },
                            child: Text("FALSE")),
                        Divider(),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PrefTestName()),
                              );
                            },
                            child: Text("NAME")),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PrefTrue extends StatefulWidget {
  @override
  _PrefTrue createState() => _PrefTrue();
}

class _PrefTrue extends State<PrefTrue> {
  bool? _friendship;
  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _friendship = (prefs.getBool('friendship') ?? false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        '$_friendship',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}

//
// NAME TEST
//

class PrefTestName extends StatefulWidget {
  @override
  _PrefTestName createState() => _PrefTestName();
}

class _PrefTestName extends State<PrefTestName> {
  TextEditingController? _controller;
  String? _name;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefValue) => {
          setState(() {
            _name = prefValue.getString('name') ?? 'Alvin';
            _controller = new TextEditingController(text: _name);
          })
        });
    // Future.delayed(const Duration(seconds: 0), () {
    //   Navigator.of(context).pushNamed('/prefTrue');
    // });
  }

  Future<Null> storeName(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name", name);
  }

  bool _validate = false;
  RegExp regExp = new RegExp("[a-zA-Z]");
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () => getOnWillPop(context),
      child: new Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.red[300],
        body: Stack(
          children: <Widget>[
            new Center(
              child: new Container(
                child: SafeArea(
                  child: new SingleChildScrollView(
                    child: new Column(
                      // center the children
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: FadeIn(
                            0,
                            AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                  "Act One",
                                  textStyle: TextStyle(
                                      fontSize: width * .1,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "BottleParty",
                                      color: Colors.white),
                                  textAlign: TextAlign.start,
                                  speed: const Duration(milliseconds: 100),
                                ),
                              ],
                              isRepeatingAnimation: false,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: AnimatedTextKit(
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TyperAnimatedText(
                                "Welcome to Republic City",
                                textStyle: TextStyle(
                                    fontSize: width * .08,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Dalek",
                                    color: Colors.white),
                                textAlign: TextAlign.start,
                                speed: Duration(milliseconds: 100),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        FadeIn(
                          20,
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 100),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Character Name",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(12),
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[a-zA-Z]')),
                                    ],
                                    onChanged: (String str) {
                                      setState(() {
                                        _controller!.text.isEmpty
                                            ? _validate = true
                                            : _validate = false;
                                        _name = str;
                                        storeName(str);
                                      });
                                    },
                                    autovalidateMode: AutovalidateMode.always,
                                    controller: _controller,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                          ),
                                        ),
                                        errorText: _validate
                                            ? 'Value Can\'t Be Empty'
                                            : null,
                                        hintText: "Alvin",
                                        fillColor: Color(0xfff3f3f4),
                                        filled: true))
                              ],
                            ),
                          ),
                        ),
                        FadeIn(
                          30,
                          Container(
                            child: new Padding(
                              padding: EdgeInsets.all(10.0),
                              child: new TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.amberAccent[100],
                                ),
                                child: Text("Let's Start"),
                                onPressed: () {
                                  showModalBottomSheet<void>(
                                    isDismissible: true,
                                    enableDrag: true,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: 300,
                                        color: Colors.redAccent,
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                'Save Name',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 45,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: "BottleParty"),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  SizedBox(height: 15),
                                                  Divider(
                                                    height: 20,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 15),
                                                    child: Container(
                                                      child: TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 10,
                                                                  bottom: 10),
                                                        ),
                                                        child: Text('YES',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  "BottleParty",
                                                              fontSize: 30,
                                                              letterSpacing: 1,
                                                            )),
                                                        onPressed: () async {
                                                          if (_validate ==
                                                              false) {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          PrefName()),
                                                            );
                                                          } else {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            Fluttertoast.showToast(
                                                                backgroundColor:
                                                                    Colors
                                                                        .black,
                                                                msg:
                                                                    "Name can't be nothing.",
                                                                textColor:
                                                                    Colors
                                                                        .white,
                                                                toastLength: Toast
                                                                    .LENGTH_LONG,
                                                                gravity:
                                                                    ToastGravity
                                                                        .BOTTOM,
                                                                timeInSecForIosWeb:
                                                                    5);
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 15),
                                                    child: Container(
                                                      child: TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 10,
                                                                  bottom: 10),
                                                        ),
                                                        child: Text('NO',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  "BottleParty",
                                                              fontSize: 30,
                                                              letterSpacing: 1,
                                                            )),
                                                        onPressed: () =>
                                                            Navigator.of(
                                                                    context)
                                                                .pop(),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Visibility(
                                                visible: visible,
                                                child: Text(
                                                  "Bruh! Name can't be nothing.",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PrefName extends StatefulWidget {
  @override
  _PrefName createState() => _PrefName();
}

class _PrefName extends State<PrefName> {
  String? _name;
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefValue) => {
          setState(() {
            _name = prefValue.getString('letterTea') ?? '';
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(
          '$_name',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
