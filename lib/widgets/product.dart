import 'package:flutter/material.dart';
import '../screens/product_screen.dart';

class Product extends StatelessWidget {
  final String name;
  final String price;
  final String image;
  final Color color;
  final double height;
  final String store;
  final String description;

  Product({
    required this.name,
    required this.price,
    required this.image,
    required this.color,
    required this.height,
    required this.store,
    required this.description,
  });

  void _handleContainerPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            ProductScreen(
              name: name,
              price: price,
              image: image,
              color: color,
              store: store,
              description: description,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => _handleContainerPressed(context),
        child: Container(
          width: 170,
          height: height,
          child: Card(
            elevation: 2.0,
            color: color,
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5, top: 5),
                      child: Icon(Icons.favorite_outline, size: 20),
                    ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  child: Image.asset(image),
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}