import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Lamp",
                style: TextStyle(
                    fontSize: 31,
                    fontWeight: FontWeight.w200,
                    letterSpacing: 1.3),
              ),
              TextSpan(
                text: "ster",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 31,
                    letterSpacing: 1.3),
              ),
            ],
          ),
        ),
        Spacer(),
        IconButton(
            icon: Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
            onPressed: () {}),
        IconButton(
            icon: Icon(
              FontAwesomeIcons.borderAll,
              color: Colors.white,
            ),
            onPressed: () {}),
      ],
    );
  }
}
