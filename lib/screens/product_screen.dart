import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/home_screen.dart';
import 'package:flutter_projects/screens/setting_screen.dart';
import 'package:flutter_projects/screens/shopping_list_screen.dart';
import '../widgets/size_button.dart';
import 'favorites_screen.dart';
import 'history_screen.dart';

class ProductScreen extends StatelessWidget {
  final String name;
  final String price;
  final String image;
  final Color color;
  final String store;
  final String description;

  ProductScreen({
    required this.name,
    required this.price,
    required this.image,
    required this.color,
    required this.store,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.38,
            color: color.withOpacity(0.7),
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    store,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                  Container(
                    width: 330,
                    child: Text(
                      description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizeButton( text: 'S'),
                      SizeButton(text: 'M'),
                      SizeButton(text: 'L'),
                      SizeButton(text: 'XL'),
                      SizeButton(text: 'XXL'),
                    ],
                  ),
                  Row (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        price,
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight:
                          FontWeight.bold,
                          color: color.withOpacity(0.7),
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2, 2),
                              blurRadius: 1.0,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 25.0),
                      Column(
                        children: [
                          SizedBox(
                            width: 180,
                            height: 35,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(color.withOpacity(0.7)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Añadir al carrito'),
                                  SizedBox(width: 10.0),
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          SizedBox(
                            width: 180,
                            height: 35,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(color.withOpacity(0.7)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Reservar prenda'),
                                  SizedBox(width: 10.0),
                                  Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShoppingList(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite_outline),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoriteScreen(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.history),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HistoryScreen(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.settings_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}