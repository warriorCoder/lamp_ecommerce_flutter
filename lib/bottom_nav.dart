import 'package:flutter/material.dart';

import 'global.dart';

class MyBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 11, vertical: 7),
          decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(19),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.home, color: accent),
              SizedBox(
                width: 9.0,
              ),
              Text(
                "Home",
                style: TextStyle(color: accent),
              ),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.settings,
              color: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }
}