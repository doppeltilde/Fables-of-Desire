import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NaokiRouteLists extends StatelessWidget {
  List<String> routelist = [
    "/endcredits",
    "/naoki1",
    "/naoki2",
    "/naoki3",
    "/naoki4",
    "/naoki5",
    "/naoki6",
    "/naoki7",
    "/naoki8",
    "/naoki9",
    "/naoki10",
    "/naoki11",
    "/naoki12",
    "/naoki13",
    "/naoki14",
    "/naoki15",
    "/naoki16",
    "/naoki17",
    "/naoki18",
    "/naoki19",
    "/naoki20",
    "/naoki21",
    "/naoki22",
    "/naoki23",
    "/naoki24",
    "/naoki25",
    "/naoki26",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text("DEBUG NAOKI"),
        ),
        body: Center(
            child: ListView.separated(
          separatorBuilder: (context, i) => Divider(
            color: Colors.black,
          ),
          itemCount: routelist.length,
          itemBuilder: (context, i) => Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30)),
                  onPressed: () =>
                      Navigator.of(context).pushNamed(routelist[i]),
                  child: Text(routelist[i])),
            ),
          ),
        )));
  }
}
