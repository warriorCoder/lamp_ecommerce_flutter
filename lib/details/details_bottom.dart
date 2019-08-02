import 'package:flutter/material.dart';

import '../global.dart';

class DetailsBottom extends StatelessWidget {
  const DetailsBottom({Key key}) : super(key: key);

  Widget _buildBottomSheetHeader() {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(products[1]["productName"],
                style: TextStyle(color: Colors.white, fontSize: 17)),
            SizedBox(
              height: 5.0,
            ),
            Text(products[1]["price"],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: RaisedButton(child: Text("Buy"),onPressed: (){},),
        ),
        
        Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white30, // accent,
          ),
          child: Icon(
            Icons.favorite,
            color: Colors.redAccent,
          ),
        ),
      ],
    );
  }

  Widget _buildProductSpecifications(
    int count,
  ) {
    return Row(
      //TODO: make dynamic based on the number of specs
      children: List<Widget>.generate(
        count,
        (f) {
          return Expanded(
            child: Container(
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(9.0),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: <Widget>[
                  icons[f],
                  Text(
                    productSpecifications[f]["value"],
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    productSpecifications[f]["type"],
                    style: TextStyle(
                      // fontSize: 17,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
        color: darkBg,
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildBottomSheetHeader(),
                  SizedBox(
                    height: 9.0,
                  ),
                  _buildProductSpecifications(4),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. A saepe velit soluta molestiae tempore accusamus voluptates repudiandae explicabo voluptas vitae non illo rerum aperiam earum et ullam, enim laudantium facere! Lorem ipsum dolor sit amet consectetur adipisicing elit. A saepe velit soluta molestiae tempore accusamus voluptates repudiandae explicabo voluptas vitae non illo rerum aperiam earum et ullam, enim laudantium facere!",
                        style: TextStyle(color: Colors.white60, height: 1.2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.white24, width: 2)),            
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 15.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        "Others",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        // overflow: TextOverflow.clip,
                      ),
                    ),
                    SizedBox(
                      height: 9.0,
                    ),
                    Container(
                      width: (products.length * 35 + 0.0),
                      child: Stack(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage:
                                NetworkImage(products[0]["pictureLink"]),
                            backgroundColor: productColors[0],
                          ),
                          Positioned(
                            left: 25,
                            child: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(products[1]["pictureLink"]),
                              backgroundColor: productColors[1],
                            ),
                          ),
                          Positioned(
                            left: 50,
                            child: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(products[2]["pictureLink"]),
                              backgroundColor: productColors[2],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
                Spacer(),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: accent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
