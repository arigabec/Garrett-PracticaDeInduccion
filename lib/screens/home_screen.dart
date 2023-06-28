import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/product_screen.dart';
import 'package:flutter_projects/screens/setting_screen.dart';
import 'package:flutter_projects/screens/shopping_list_screen.dart';
import 'package:flutter_projects/screens/stores_screen.dart';
import 'package:flutter_projects/widgets/menu_options.dart';
import 'package:flutter_projects/widgets/product.dart';
import 'package:flutter/widgets.dart';

import 'favorites_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Widget> products = [
    Product(
      name: "Polera Sopa de Mani",
      price: "160 Bs",
      image: "assets/images/polera1.png",
      color: Colors.deepPurpleAccent.withOpacity(0.5),
      height: 190.0,
    ),
    Product(
      name: "Polera Illimani",
      price: "160 Bs",
      image: "assets/images/polera2.png",
      color: Colors.pinkAccent.withOpacity(0.5),
      height: 210.0,
    ),
    Product(
      name: "Chaqueta Se Ha Estido",
      price: "200 Bs",
      image: "assets/images/chaqueta.png",
      color: Colors.deepOrangeAccent.withOpacity(0.5),
      height: 210.0,
    ),
    Product(
      name: "Tote 02",
      price: "180 Bs",
      image: "assets/images/tote.png",
      color: Colors.yellow.withOpacity(0.5),
      height: 210.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
          child: Column(
            children: [
              Expanded (
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 25.0),
                      Text(
                        '¿Qué vas a llevar caserito?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight:
                            FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Búsqueda...',
                            suffixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),

                      Container(
                        width: 380,
                        height: 180,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple, Colors.pink, Colors.yellow],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row (
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  '50% OFF',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight:
                                    FontWeight.bold,
                                    color: Colors.white,
                                    shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(2, 2),
                                        blurRadius: 3.0,
                                        color: Colors.black54,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationZ(0.1),
                                  child: Image.asset(
                                    "assets/images/polera0.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MenuOptions(
                            text: "TODO",
                            onPressed: () {
                              // Algo pasará
                            },
                            icon: Icons.menu,
                            width: 80,
                          ),
                          SizedBox(width: 10.0),
                          MenuOptions(
                            text: "EMPRESAS",
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => StoreScreen(),
                                ),
                              );
                            },
                            icon: Icons.business ,
                            width: 110,
                          ),
                          SizedBox(width: 10.0),
                          MenuOptions(
                            text: "POLERAS",
                            onPressed: () {
                              print("Poleras");
                            },
                            icon: Icons.shopping_bag ,
                            width: 110,
                          ),
                        ],
                      ),
                      SizedBox(height: 25.0),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Text(
                            'Populares',
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
                      SizedBox(height: 10.0),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: products.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              child: products[index]
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home_outlined),
                onPressed: () {
                  // Navigate to home screen
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