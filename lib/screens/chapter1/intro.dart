//
// NAME TEST
//

import 'package:fablesofdesire/global/will_pop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Intro extends StatefulWidget {
  @override
  _Intro createState() => _Intro();
}

class _Intro extends State<Intro> {
  TextEditingController? _controller = TextEditingController();
  String? _name;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefValue) => {
          setState(() {
            _name = prefValue.getString('name') ?? 'X';
            _controller = new TextEditingController(text: _name);
          })
        });
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

  Future<Null> storeName(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
  }

  bool _validate = false;
  RegExp regExp = new RegExp("[a-zA-Z]");
  double? opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(),
      child: new Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        //backgroundColor: Colors.red[300],
        body: Stack(
          children: <Widget>[
            new Center(
              child: new Container(
                child: SafeArea(
                  child: new SingleChildScrollView(
                    child: new AnimatedOpacity(
                      opacity: opacity!,
                      duration: Duration(milliseconds: 300),
                      child: Column(
                        // center the children
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 1.7,
                            margin: EdgeInsets.symmetric(horizontal: 100),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Character Name",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "NanumBrush",
                                      fontSize: 65),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: TextFormField(
                                    maxLength: 10,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(10),
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[a-zA-Z]')),
                                    ],
                                    onChanged: (String str) {
                                      setState(() {
                                        if (_controller!.text.isEmpty ||
                                            _controller!.text.length >= 11) {
                                          _validate = true;
                                        } else {
                                          _validate = false;
                                        }

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
                                              BorderRadius.circular(50),
                                          borderSide: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                          ),
                                        ),
                                        errorText: _validate ? 'Error!' : null,
                                        hintText: "Main Character",
                                        fillColor: Color(0xfff3f3f4),
                                        filled: true),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Builder(
                            builder: (context) {
                              if (_controller!.text.isEmpty ||
                                  _controller!.text.length >= 11) {
                                return SizedBox.shrink();
                              } else {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 5),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: ElevatedButton(
                                        child: Text(
                                          "CONTINUE",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontFamily: "Julee"),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 20),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                                side: BorderSide(
                                                    color: Colors.white))),
                                        onPressed: () {
                                          Navigator.of(context).pushNamed('/1');
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) => PrefName()),
                                          // );
                                        }),
                                  ),
                                );
                              }
                            },
                          ),
                        ],
                      ),
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
    print("$_name");
    super.initState();
    SharedPreferences.getInstance().then((prefValue) => {
          setState(() {
            _name = prefValue.getString('name') ?? 'MC';
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Text(
          '$_name',
        ),
        TextButton(
          child: Text("REMOVE"),
          onPressed: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();

            setState(() {
              prefs.remove("name");
              _name = null;
            });
          },
        ),
      ]),
    ));
  }
}
