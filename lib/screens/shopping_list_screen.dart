import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/checkout_screen.dart';
import 'package:flutter_projects/screens/setting_screen.dart';
import 'package:flutter_projects/widgets/buy_button.dart';
import 'package:flutter_projects/widgets/shopping_product.dart';
import 'package:flutter_projects/screens/favorites_screen.dart';
import 'package:flutter_projects/screens/home_screen.dart';

import 'favorites_screen.dart';
import 'history_screen.dart';

class ShoppingList extends StatelessWidget {
  final List<Widget> productList = [
    ShoppingProduct (
      name: "Polera Sopa de Mani",
      price: "160 Bs",
      image: "assets/images/polera1.png",
      color: Colors.deepPurpleAccent.withOpacity(0.5),
      size: "Talla S",
      store: "Saturnina Design"
    ),
    ShoppingProduct(
      name: "Polera Illimani",
      price: "160 Bs",
      image: "assets/images/polera2.png",
      color: Colors.pinkAccent.withOpacity(0.5),
      size: "Talla M",
      store: "Saturnina Design"
    ),
    ShoppingProduct(
      name: "Chaqueta Se Ha Estido",
      price: "200 Bs",
      image: "assets/images/chaqueta.png",
      color: Colors.deepOrangeAccent.withOpacity(0.5),
      size: "Talla M",
      store: "QuiroIlustra"
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Column(
        children: [
          SizedBox(height: 30.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'Canastita de compras',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight:
                    FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Expanded(
            child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                        child: productList[index]
                    ),
                    SizedBox(height: 15.0),
                  ],
                );
              },
            ),
          ),
          BuyButton(
              text: "Continuar con la compra",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutScreen(),
                  ),
                );
              },
          ),
          SizedBox(height: 30.0),
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
