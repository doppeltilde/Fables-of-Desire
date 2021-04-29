import 'package:flutter/material.dart';

class DesktopNav extends StatefulWidget {
  late final selectedPageId;
  final controller;
  final scaffoldKey;
  DesktopNav(
      {Key? key,
      required this.selectedPageId,
      required this.controller,
      required this.scaffoldKey});
  @override
  _WildfyreState createState() => _WildfyreState();
}

class _WildfyreState extends State<DesktopNav> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.white,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Theme.of(context).accentColor))),
      child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                widget.selectedPageId == 0 ? Icons.menu : Icons.menu_outlined,
                color: Colors.black,
              ),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  widget.selectedPageId == 1
                      ? Icons.category
                      : Icons.category_outlined,
                  color: Theme.of(context).accentColor),
              label: 'MORE',
            ),
          ],
          unselectedLabelStyle: TextStyle(fontSize: 18, letterSpacing: 1),
          selectedLabelStyle: TextStyle(fontSize: 21, letterSpacing: 1),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          iconSize: 25.0,
          currentIndex: widget.selectedPageId,
          onTap: (newId) {
            if (widget.selectedPageId == 0) {
              widget.scaffoldKey.currentState!.openEndDrawer();
            } else {
              setState(() {
                widget.controller.jumpToPage(newId);
                widget.selectedPageId = newId;
              });
            }
          }),
    );
  }
}
