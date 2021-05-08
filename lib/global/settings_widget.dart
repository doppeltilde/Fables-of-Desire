import 'package:flutter/material.dart';

class ProfileListItem extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final bool hasNavigation;

  const ProfileListItem({
    Key? key,
    this.icon,
    this.text,
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
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
        color: Theme.of(context).cardColor,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            this.icon,
            size: 25,
          ),
          SizedBox(width: 15),
          Text(
            this.text!,
            style: TextStyle(fontFamily: "Julee", fontSize: 28),
          ),
          Spacer(),
          if (this.hasNavigation)
            Icon(
              Icons.chevron_right_rounded,
              size: 25,
            ),
        ],
      ),
    );
  }
}
