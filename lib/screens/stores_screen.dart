import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/favorites_screen.dart';
import 'package:flutter_projects/screens/setting_screen.dart';
import 'package:flutter_projects/screens/home_screen.dart';
import 'package:flutter_projects/screens/shopping_list_screen.dart';
import '../widgets/favorite-product.dart';
import '../widgets/store.dart';

class StoreScreen extends StatelessWidget {

  final List<Widget> productList = [
    Store (
      name: "Saturnina Design",
      image: "assets/images/saturnina.png",
      description: "20 prendas a disposición"
    ),
    Store (
        name: "QuiroIlustra",
        image: "assets/images/quiro.png",
        description: "30 prendas a disposición"
    ),
    Store (
        name: "Munay",
        image: "assets/images/munay.png",
        description: "10 prendas a disposición"
    ),
    Store (
        name: "CICADA",
        image: "assets/images/cicada.png",
        description: "5 prendas a disposición"
    ),
    Store (
        name: "Feeling TM",
        image: "assets/images/feeling.png",
        description: "25 prendas a disposición"
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Stores'),
      ),
      body: Column(
        children: [
          SizedBox(height: 30.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'Empresas',
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
          SizedBox(height: 20.0),
          Expanded(
            child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                        child: productList[index]
                    ),
                    SizedBox(height: 8.0),
                  ],
                );
              },
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
                // Perform search action
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
