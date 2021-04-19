// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:bubble/bubble.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:pointandclick1/globals/globals.dart';
// import 'package:pointandclick1/screens/pages/book1/chapters/chapter1/cards/tea.dart';
// import 'package:pointandclick1/screens/pages/more/more.dart';
// import 'package:pointandclick1/screens/pages/more/story.dart';
// import 'package:xml/xml.dart' as xml;

// class ChapterTwoTwo extends StatefulWidget {
//   _Choices createState() => _Choices();
// }

// class _Choices extends State<ChapterTwoTwo> {
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   Future.delayed(const Duration(seconds: 2), () {
//   //     setState(() {
//   //       visibleBubble1 = false;
//   //       visible = true;
//   //     });
//   //   });
//   //   Future.delayed(const Duration(seconds: 4), () {
//   //     setState(() {
//   //       visible1 = true;
//   //     });
//   //   });
//   // }

//   Future<List<Story>> getStory(BuildContext context) async {
//     String xmlString = await DefaultAssetBundle.of(context)
//         .loadString("assets/story/story.xml");

//     var text = xml.XmlDocument.parse(xmlString);

//     var elements = text.findAllElements("story");

//     return elements.map((e) {
//       return Story(
//           e.findElements("author").first.text,
//           e.findElements("build_number").first.text,
//           int.parse(e.findElements("chdate").first.text));
//     }).toList();
//   }

//   @override
//   void initState() {
//     super.initState();
//   }

//   int speedFactor = 7;
//   bool scroll = false;
//   var visibleBubble1 = true;
//   var visible = false;
//   var visible1 = false;
//   var _visible2 = false;
//   var _visible3 = false;
//   var _visible4 = false;
//   var _visible5 = false;
//   var _visible6 = false;
//   var _visible7 = false;
//   var _visible8 = false;
//   var _visible9 = false;
//   var _visible14 = false;

//   bool onPressed = false;
//   bool onPressed1 = false;
//   bool onPressed2 = false;

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//         onWillPop: () => getOnWillPop(context),
//         child: new Scaffold(
//             resizeToAvoidBottomInset: false,
//             appBar: teaProfile(context) as PreferredSizeWidget?,
//             body: FutureBuilder(
//                 future: getStory(context),
//                 builder: (context, data) {
//                   FutureList<Story>> story = data.data;
//                   return ListView.builder(
//                       itemCount: story.length,
//                       itemBuilder: (context, index) {
//                         return ListTile(
//                             title: Text(
//                           story[index].name,
//                         ));
//                       });
//                 })));
//   }
// }

// // Chapter 2-3

// class ChapterTwoThree extends StatefulWidget {
//   _Choices2 createState() => _Choices2();
// }

// class _Choices2 extends State<ChapterTwoThree> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 0), () {
//       setState(() {
//         visible = true;
//       });
//     });
//   }

//   var visible = true;
//   var onPressed2 = false;
//   var onPressed3 = false;
//   var onPressed4 = false;
//   var visible1 = false;
//   var _visible2 = false;
//   var _visible3 = false;
//   var _visible4 = false;
//   var _visible5 = false;
//   var _visible6 = false;
//   var _visible7 = false;
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () => getOnWillPop(context),
//       child: new Scaffold(
//         resizeToAvoidBottomInset: false,
//         appBar: teaProfile(context) as PreferredSizeWidget?,
//         body: Stack(
//           fit: StackFit.expand,
//           children: <Widget>[
//             Column(
//               children: <Widget>[
//                 Expanded(
//                   child: ListView(
//                     reverse: true,
//                     physics: ScrollPhysics(),
//                     children: <Widget>[
//                       Container(
//                         padding: EdgeInsets.all(5.0),
//                         child: Column(
//                           children: <Widget>[
//                             SizedBox(
//                               height: 15,
//                             ),
//                             Bubble(
//                               color: Color.fromRGBO(212, 234, 244, 1.0),
//                               child: Text('Starlink\nTODAY 06:55 PM',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontFamily: "PxGrotesk",
//                                       color: Colors.black,
//                                       fontSize: 15.0)),
//                             ),
//                             SizedBox(
//                               height: 15,
//                             ),
//                             Visibility(
//                               visible: visible1,
//                               child: textCard(
//                                 context,
//                                 "Hey Tea 😁",
//                               ),
//                             ),
//                             //CardPlaceholderMC44()),
//                             Visibility(
//                                 visible: _visible2,
//                                 child: textCard(
//                                   context,
//                                   "Wanna come over, before we go to Elaines place?",
//                                 )),
//                             //CardPlaceholderMC45()),
//                             Builder(builder: (context) {
//                               if (_visible2 == true && _visible3 == false) {
//                                 return textCardBubble(context, "· · ·");
//                               } else {
//                                 return Visibility(
//                                     visible: _visible3,
//                                     child: TextCardOther(
//                                         "Sure, we can even watch a movie, if you want."));
//                               }
//                             }),

//                             //CardPlaceholderTea21()),
//                             Builder(builder: (context) {
//                               if (_visible3 == true && _visible4 == false) {
//                                 return textCardBubble(context, "· · ·");
//                               } else {
//                                 return Visibility(
//                                     visible: _visible4,
//                                     child: TextCardOther(
//                                         "I even have a movie. But it's going to be a suprise. 😝"));
//                               }
//                             }),
//                             //CardPlaceholderTea22()),
//                             Visibility(
//                                 visible: _visible5,
//                                 child: textCard(context,
//                                     "Sure sounds great. Can't wait which movie you picked. 😇")),
//                             //CardPlaceholderMC46()),
//                             Builder(builder: (context) {
//                               if (_visible5 == true && _visible6 == false) {
//                                 return textCardBubble(context, "· · ·");
//                               } else {
//                                 return Visibility(
//                                     visible: _visible6,
//                                     child: TextCardOther(
//                                       "I'll pick up some snacks on my way to you. 🍿",
//                                     ));
//                               }
//                             }),
//                             //CardPlaceholderTea23()),
//                             Visibility(
//                                 visible: _visible7,
//                                 child:
//                                     textCard(context, "Rad! See ya at mine.")),
//                             //CardPlaceholderMC47()),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Builder(
//                   builder: (context) {
//                     if (visible) {
//                       return SafeArea(
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 8.0),
//                           height: 70.0,
//                           child: Row(
//                             children: <Widget>[
//                               IconButton(
//                                 icon: Icon(FontAwesomeIcons.solidSmileBeam),
//                                 iconSize: 25.0,
//                                 onPressed: () {},
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   padding: EdgeInsets.all(10.0),
//                                   decoration: BoxDecoration(
//                                     border: Border.all(color: Colors.grey),
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(15.0)),
//                                   ),
//                                   child: TyperAnimatedTextKit(
//                                     speed: Duration(milliseconds: 200),
//                                     isRepeatingAnimation: false,
//                                     text: [
//                                       "Hey Tea 😁",
//                                     ],
//                                     textStyle: TextStyle(),
//                                     textAlign: TextAlign.start,
//                                   ),
//                                 ),
//                               ),
//                               IconButton(
//                                 icon: Icon(FontAwesomeIcons.telegramPlane),
//                                 iconSize: 25.0,
//                                 color: Colors.blue,
//                                 onPressed: () {
//                                   Future.delayed(Duration(seconds: 0), () {
//                                     setState(() {
//                                       visible = false;
//                                       visible1 = true;
//                                     });
//                                   });
//                                   Future.delayed(Duration(seconds: 2), () {
//                                     setState(() {
//                                       onPressed2 = true;
//                                     });
//                                   });
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     } else if (onPressed2) {
//                       return SafeArea(
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 8.0),
//                           height: 70.0,
//                           child: Row(
//                             children: <Widget>[
//                               IconButton(
//                                 icon: Icon(FontAwesomeIcons.solidSmileBeam),
//                                 iconSize: 25.0,
//                                 onPressed: () {},
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   padding: EdgeInsets.all(10.0),
//                                   decoration: BoxDecoration(
//                                     border: Border.all(color: Colors.grey),
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(15.0)),
//                                   ),
//                                   child: TyperAnimatedTextKit(
//                                     speed: Duration(milliseconds: 200),
//                                     isRepeatingAnimation: false,
//                                     text: [
//                                       "Wanna come over, before we go to Elaines place?",
//                                     ],
//                                     textStyle: TextStyle(),
//                                     textAlign: TextAlign.start,
//                                   ),
//                                 ),
//                               ),
//                               IconButton(
//                                 icon: Icon(FontAwesomeIcons.telegramPlane),
//                                 iconSize: 25.0,
//                                 color: Colors.blue,
//                                 onPressed: () {
//                                   Future.delayed(Duration(seconds: 0), () {
//                                     setState(() {
//                                       onPressed2 = false;
//                                       _visible2 = true;
//                                     });
//                                   });
//                                   Future.delayed(Duration(seconds: 4), () {
//                                     setState(() {
//                                       _visible3 = true;
//                                     });
//                                   });
//                                   Future.delayed(Duration(seconds: 8), () {
//                                     setState(() {
//                                       onPressed3 = true;
//                                       _visible4 = true;
//                                     });
//                                   });
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     } else if (onPressed3) {
//                       return SafeArea(
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 8.0),
//                           height: 70.0,
//                           child: Row(
//                             children: <Widget>[
//                               IconButton(
//                                 icon: Icon(FontAwesomeIcons.solidSmileBeam),
//                                 iconSize: 25.0,
//                                 onPressed: () {},
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   padding: EdgeInsets.all(10.0),
//                                   decoration: BoxDecoration(
//                                     border: Border.all(color: Colors.grey),
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(15.0)),
//                                   ),
//                                   child: TyperAnimatedTextKit(
//                                     speed: Duration(milliseconds: 200),
//                                     isRepeatingAnimation: false,
//                                     text: [
//                                       "Sure sounds great. Can't wait which movie you picked. 😇",
//                                     ],
//                                     textStyle: TextStyle(),
//                                     textAlign: TextAlign.start,
//                                   ),
//                                 ),
//                               ),
//                               IconButton(
//                                 icon: Icon(FontAwesomeIcons.telegramPlane),
//                                 iconSize: 25.0,
//                                 color: Colors.blue,
//                                 onPressed: () {
//                                   Future.delayed(Duration(seconds: 0), () {
//                                     setState(() {
//                                       onPressed3 = false;
//                                       _visible5 = true;
//                                     });
//                                   });
//                                   Future.delayed(Duration(seconds: 4), () {
//                                     setState(() {
//                                       onPressed4 = true;
//                                       _visible6 = true;
//                                     });
//                                   });
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     } else if (onPressed4) {
//                       return SafeArea(
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 8.0),
//                           height: 70.0,
//                           child: Row(
//                             children: <Widget>[
//                               IconButton(
//                                 icon: Icon(FontAwesomeIcons.solidSmileBeam),
//                                 iconSize: 25.0,
//                                 onPressed: () {},
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   padding: EdgeInsets.all(10.0),
//                                   decoration: BoxDecoration(
//                                     border: Border.all(color: Colors.grey),
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(15.0)),
//                                   ),
//                                   child: TyperAnimatedTextKit(
//                                     speed: Duration(milliseconds: 200),
//                                     isRepeatingAnimation: false,
//                                     text: [
//                                       "Rad!",
//                                     ],
//                                     textStyle: TextStyle(),
//                                     textAlign: TextAlign.start,
//                                   ),
//                                 ),
//                               ),
//                               IconButton(
//                                 icon: Icon(FontAwesomeIcons.telegramPlane),
//                                 iconSize: 25.0,
//                                 color: Colors.blue,
//                                 onPressed: () {
//                                   Future.delayed(Duration(seconds: 0), () {
//                                     setState(() {
//                                       onPressed4 = false;
//                                       _visible7 = true;
//                                     });
//                                   });
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     } else if (_visible7) {
//                       return SafeArea(
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 8.0),
//                           height: 70.0,
//                           child: Row(
//                             children: <Widget>[
//                               IconButton(
//                                 icon: Icon(FontAwesomeIcons.solidSmileBeam),
//                                 iconSize: 25.0,
//                                 onPressed: () {},
//                               ),
//                               Expanded(
//                                 child: continueButton(context, "/episode2-5"),
//                               ),
//                               IconButton(
//                                 icon: Icon(FontAwesomeIcons.telegramPlane),
//                                 iconSize: 25.0,
//                                 onPressed: () {},
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     } else {
//                       return messageComposer(context);
//                     }
//                   },
//                   //messageComposer(context),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
