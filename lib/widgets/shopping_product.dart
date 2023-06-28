import 'package:flutter/material.dart';

import '../screens/product_screen.dart';

class ShoppingProduct extends StatelessWidget {
  final String name;
  final String price;
  final String image;
  final Color color;
  final String size;
  final String store;

  ShoppingProduct({
    required this.name,
    required this.price,
    required this.image,
    required this.color,
    required this.size,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 2.0,
            color: color,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 370,
                  height: 120,
                  child: Row (
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            store,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black38,
                            ),
                          ),
                          Text(
                            size,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black38,
                            ),
                          ),
                          Text(
                            price,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 25.0),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          // Delete button action
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}