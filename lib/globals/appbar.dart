import 'package:flutter/material.dart';

Widget sliverAppBarHome(_character) {
  return SliverAppBar(
    leading: Icon(
      Icons.ac_unit,
      color: Colors.transparent,
    ),
    pinned: false,
    expandedHeight: 180.0,
    flexibleSpace: FlexibleSpaceBar(
      titlePadding: EdgeInsets.zero,
      centerTitle: true,
      background: Image.asset(_character, fit: BoxFit.cover),
    ),
  );
}
