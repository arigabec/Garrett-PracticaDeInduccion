import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/home_screen.dart';
import 'package:flutter_projects/screens/shopping_list_screen.dart';

import 'favorites_screen.dart';
import 'history_screen.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(50.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column (
              children: [
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Vicente Gasolina',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
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
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Cuenta'),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Mis direcciones'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificaciones'),
          ),
          ListTile(
            leading: Icon(Icons.mobile_friendly),
            title: Text('Dispositivos'),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Contraseñas'),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Lenguajes'),
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
