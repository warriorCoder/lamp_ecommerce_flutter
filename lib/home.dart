import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_nav.dart';
import 'global.dart';
import 'header.dart';
import 'menu.dart';
import 'product_container.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topRight, end: Alignment.bottomLeft, colors: [darkBg, lighterBg])),
          padding: EdgeInsets.only(left: 21, right: 21, top: 15),
          child: Column(
            
            children: <Widget>[
              Header(),
              SizedBox(
                height: 15.0,
              ),
              Menu(),
              Spacer(),_buildProductRow(),
              Flexible(
                flex: 7,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (ctx, id) {
                    return ProductContainer(id: id);
                  },
                ),
              ),
              Spacer(),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15.0),
                child: MyBottomNavBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildProductRow() {
    return Flexible(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.tune),
            color: Colors.white,
            onPressed: () {},
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 9.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Text("Fan"),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 9.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [Colors.yellow, accent],
                ),
              ),
              child: Text(
                "Lamps",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 9.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Text("Heater"),
            ),
          ),
        ],
      ),
    );
  }
}
