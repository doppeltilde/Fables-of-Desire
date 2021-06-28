import 'dart:ui';

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
            color: Colors.white,
            image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.saturation),
              image: AssetImage("assets/images/sprites/" + chibiImg + ".png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),

        // Text(
        //   "Here Chibi Art",
        //   style: TextStyle(color: Colors.black, fontSize: 20),
        // ),
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
              image: AssetImage("assets/images/sprites/" + chibiImg + ".png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        // Text(
        //   "Here Chibi Art",
        //   style: TextStyle(color: Colors.black, fontSize: 20),
        // ),
      ],
    );
  }
}

// ignore: must_be_immutable
class DeleteButton extends StatefulWidget {
  String? saveSlot;
  String? saveSlotName;
  Function? callback;
  DeleteButton({required this.saveSlot, this.saveSlotName, this.callback});
  @override
  _DeleteButtonState createState() => _DeleteButtonState();
}

class _DeleteButtonState extends State<DeleteButton> {
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            widget.callback!(widget.saveSlot, widget.saveSlotName);
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.redAccent,
          ),
          child: Text(
            "DELETE SAVE",
            style: TextStyle(
                color: Colors.white, fontFamily: "Mali", fontSize: 20),
          ),
        ));
  }
}

// ignore: must_be_immutable
// class SaveButton extends StatefulWidget {
//   String? saveSlot;
//   String? saveSlotName;
//   Function? callback;
//   DeleteButton({this.saveSlot, this.saveSlotName, this.callback});
//   @override
//   _SaveButtonState createState() => _SaveButtonState();
// }

// class _SaveButtonState extends State<SaveButton> {
//   Widget build(BuildContext context) {
//     return InkWell(
//         onTap: () {
//           setState(() {
//             widget.callback!(widget.saveSlot, widget.saveSlotName);
//           });
//         },
//         child: Container(
//           padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(30),
//             color: Colors.redAccent,
//           ),
//           child: Text(
//             "DELETE SAVE",
//             style: TextStyle(
//                 color: Colors.white, fontFamily: "Mali", fontSize: 20),
//           ),
//         ));
//   }
// }

// ignore: must_be_immutable
class LoadButton extends StatefulWidget {
  String? getSlot;
  LoadButton({required this.getSlot});
  @override
  _LoadButtonState createState() => _LoadButtonState();
}

class _LoadButtonState extends State<LoadButton> {
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            //widget.callback2!(widget.getSlot, widget.getSlotName);
            Navigator.of(context).pushNamed(widget.getSlot!);
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Text(
            "LOAD SAVE",
            style: TextStyle(
                color: Colors.black, fontFamily: "Mali", fontSize: 20),
          ),
        ));
  }
}

// ignore: must_be_immutable
class GetSave extends StatefulWidget {
  String? getRoute;
  String? getRouteName;
  Function? callbackSave;
  GetSave({
    required this.getRoute,
    required this.getRouteName,
    required this.callbackSave,
  });
  @override
  _SaveState createState() => _SaveState();
}

class _SaveState extends State<GetSave> {
  Widget build(BuildContext context) {
    //print(widget.getRouteName);
    return InkWell(
      onTap: () {
        setState(() {
          widget.callbackSave!(widget.getRoute, widget.getRouteName);
        });
      },
      child: Builder(builder: (context) {
        if (widget.getRoute!.contains("naoki") == true) {
          if (widget.getRouteName == null || widget.getRouteName!.isEmpty) {
            return ChibiNeutral(
              chibiImg: "Chibi_Naoki",
            );
          } else {
            return ChibiHappy(
              chibiImg: "Chibi_Naoki",
            );
          }
        } else if (widget.getRoute!.contains("hidetake") == true) {
          if (widget.getRouteName == null || widget.getRouteName!.isEmpty) {
            return ChibiNeutral(
              chibiImg: "Chibi_Hidetake",
            );
          } else {
            return ChibiHappy(
              chibiImg: "Chibi_Hidetake",
            );
          }
        } else {
          if (widget.getRouteName == null || widget.getRouteName!.isEmpty) {
            return ChibiNeutral(
              chibiImg: "Chibi_Hidetake",
            );
          } else {
            return ChibiHappy(
              chibiImg: "Chibi_Hidetake",
            );
          }
        }
      }),
    );
  }
}

// // ignore: must_be_immutable
// class GetChibi extends StatefulWidget {
//   String route;
//   GetChibi({required this.route});
//   @override
//   _ChibiState createState() => _ChibiState();
// }

// class _ChibiState extends State<GetChibi> {
//   Widget build(BuildContext context) {
//     return Builder(builder: (context) {
//       if (widget.route.contains("naoki") == true) {
//         if (saveSlotOne == null || saveSlotOne!.isEmpty) {
//           return ChibiNeutral(
//             chibiImg: "MC_Neutral",
//           );
//         } else {
//           return ChibiHappy(
//             chibiImg: "MC_Happy",
//           );
//         }
//       } else if (widget.route.contains("hidetake") == true) {
//         if (saveSlotOne == null || saveSlotOne!.isEmpty) {
//           return ChibiNeutral(
//             chibiImg: "MC_Neutral",
//           );
//         } else {
//           return ChibiHappy(
//             chibiImg: "MC_Happy",
//           );
//         }
//       } else {
//         if (saveSlotOne == null || saveSlotOne!.isEmpty) {
//           return ChibiNeutral(
//             chibiImg: "MC_Neutral",
//           );
//         } else {
//           return ChibiHappy(
//             chibiImg: "MC_Happy",
//           );
//         }
//       }
//     });
//   }
// }
