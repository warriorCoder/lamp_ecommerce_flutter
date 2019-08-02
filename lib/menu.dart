import 'package:flutter/material.dart';

import 'global.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int active = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List<Widget>.generate(
        3,
        (i) {
          return InkWell(
            onTap: () {
              setState(() {
                active = i;
              });
            },
            child: Column(
              children: <Widget>[
                Text(
                  categories[i],
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight:
                          active == i ? FontWeight.bold : FontWeight.w100,
                      fontSize: 17.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                active == i
                    ? Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                          color: accent,
                          shape: BoxShape.circle,
                        ),
                      )
                    : Container(
                        height: 7,
                        width: 7,
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}