import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/favorites_screen.dart';
import 'package:flutter_projects/screens/setting_screen.dart';
import 'package:flutter_projects/screens/home_screen.dart';
import 'package:flutter_projects/screens/shopping_list_screen.dart';
import 'package:flutter_projects/widgets/history.dart';

class HistoryScreen extends StatelessWidget {
  final List<Widget> productList = [
    History(
        order: "9847",
        price: "160 Bs",
        description: "Polera Sopa de Mani x1"
    ),
    History(
        order: "10647",
        price: "180 Bs",
        description: "Tote 02 x1"
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('History Screen'),
      ),
      body: Column(
        children: [
          SizedBox(height: 30.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'Historial de pedidos',
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
