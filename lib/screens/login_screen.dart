import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/home_screen.dart';
import 'package:flutter_projects/widgets/input.dart';
import 'package:flutter_projects/widgets/social_media_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/widgets.dart';

import '../widgets/button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.pink, Colors.yellow],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(40.0),
                      width: 120,
                      height: 120,
                      child: Image.asset(
                        'assets/images/white_logo.png',
                      ),
                    ),
                    Text(
                      'Iniciar sesión',
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
                  ],
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Input(
                text: "Correo",
                type: TextInputType.emailAddress,
            ),
            SizedBox(height: 20.0),
            Input(
              text: "Contraseña",
              type: TextInputType.visiblePassword,
            ),
            SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialButton(
                    color: Colors.blue,
                    icon: FontAwesomeIcons.facebookF
                ),
                SizedBox(width: 20.0),
                SocialButton(
                    color: Colors.pink,
                    icon: FontAwesomeIcons.instagram
                ),
                SizedBox(width: 20.0),
                SocialButton(
                    color: Colors.red,
                    icon: FontAwesomeIcons.google
                ),
              ],
            ),
            SizedBox(height: 60.0),
            Button(
              text: "Ingresa caserito!",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
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