
import 'package:flutter/material.dart';
import 'package:lamp_ecommerce_flutter/details/details_bottom.dart';
import 'package:lamp_ecommerce_flutter/details/details_header.dart';
import 'package:lamp_ecommerce_flutter/details/page_indicators.dart';
import 'package:lamp_ecommerce_flutter/global.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

int indicatorActive = 0;

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: productColors[1],
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                color: productColors[1],
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Expanded(
                          child: PageView.builder(
                            controller: PageController(
                              initialPage: 0,
                              keepPage: true,
                            ),
                            itemCount: products.length,
                            onPageChanged: (pageId) {
                              setState(() {
                                indicatorActive = pageId;
                              });
                              print(pageId);
                            },
                            itemBuilder: (ctx, id) {
                              return Image.network(
                                products[id]["pictureLink"],
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 11),
                        Container(
                          height: 11,
                          child: PageIndicators(
                            itemCount: products.length,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      child: DetailsHeader(),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: DetailsBottom(),
            )
          ],
        ),
      ),
    );
  }
}


