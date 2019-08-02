import 'package:flutter/material.dart';


import 'global.dart';

class ProductContainer extends StatelessWidget {
  final int id;

  const ProductContainer({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/details');
      },
      child: Container(
        margin: EdgeInsets.all(15.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5.0),
                      margin: EdgeInsets.all(15.0),
                      child: Image.network(
                        products[id]["pictureLink"],
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                        color: productColors[id],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: accent,
                          boxShadow: [
                            BoxShadow(
                                color: accent,
                                offset: Offset(0, 3),
                                blurRadius: 5.0)
                          ],
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              products[id]["productName"],
              style: TextStyle(fontSize: 19, color: Colors.grey),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              products[id]["price"],
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}