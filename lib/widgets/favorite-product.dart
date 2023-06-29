import 'package:flutter/material.dart';

import '../screens/product_screen.dart';

class FavoriteProduct extends StatelessWidget {
  final String name;
  final String price;
  final String image;
  final Color color;
  final String size;
  final String store;
  final String description;

  FavoriteProduct({
    required this.name,
    required this.price,
    required this.image,
    required this.color,
    required this.size,
    required this.store,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    void _handleCardPressed() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductScreen(
              name: name,
              price: price,
              image: image,
              color: color,
              store: store,
              description: description
          ),
        ),
      );
    }

    return Card(
      elevation: 2.0,
      color: color,
      child: InkWell(
        onTap: _handleCardPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 370,
              height: 120,
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5, top: 5),
                      child: IconButton(
                        icon: Icon(Icons.favorite),
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
      ),
    );
  }
}