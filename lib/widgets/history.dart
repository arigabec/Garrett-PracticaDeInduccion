import 'package:flutter/material.dart';

import '../screens/product_screen.dart';

class History extends StatelessWidget {
  final String order;
  final String price;
  final String description;

  History({
    required this.order,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    String text = 'Orden #' + order;
    String total = 'Total ';

    return Card(
            elevation: 2.0,
            color: Colors.deepOrangeAccent.withOpacity(0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 370,
                  height: 120,
                  child: Row (
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 40.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            total + price,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 95.0),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5, top: 5),
                          child: IconButton(
                            icon: Icon(Icons.check_box),
                            onPressed: () {
                              // Delete button action
                            },
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