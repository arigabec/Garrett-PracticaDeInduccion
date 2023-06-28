import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/welcome_screen.dart';

void main() {
  runApp(DressApp());
}

class DressApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bienvenidos a DressApp',
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}