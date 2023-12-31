import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/history_screen.dart';
import 'package:flutter_projects/screens/setting_screen.dart';
import 'package:flutter_projects/screens/home_screen.dart';
import 'package:flutter_projects/screens/shopping_list_screen.dart';
import '../widgets/favorite-product.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Widget> productList = [
    FavoriteProduct (
      name: "Polera Sopa de Mani",
      price: "160 Bs",
      image: "assets/images/polera1.png",
      color: Colors.deepPurpleAccent.withOpacity(0.5),
      size: "Talla S",
      store: "Saturnina Design",
      description: "Polera hecha de algodón. Con un porcentaje del 100%. "
          "Estampado con temática boliviana, referenciando a un famoso album musical.",
    ),
    FavoriteProduct(
      name: "Tote 02",
      price: "180 Bs",
      image: "assets/images/tote.png",
      color: Colors.yellow.withOpacity(0.5),
      size: "Talla única",
      store: "CICADA",
      description: "Tote Bag cómoda y cabedora, así siempre llegas contigo todos tus artículos necesarios. "
          "Además, su resistible material te durará de por vida.",
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites Screen'),
      ),
      body: Column(
        children: [
          SizedBox(height: 30.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'Favoritos',
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
