import 'package:flutter/material.dart';

import '../global.dart';
import 'details.dart';

class PageIndicators extends StatelessWidget {
  final int itemCount;

  const PageIndicators({Key key, this.itemCount}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (ctx, id) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: 9,
          width: 9,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: indicatorActive == id ? accent : Color(0xffe6c6b2),
          ),
        );
      },
    );
  }
}