import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/widgets.dart';
import '../widgets/button.dart';
import '../widgets/input.dart';
import '../widgets/social_media_button.dart';
import 'home_screen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Screen'),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.pink, Colors.yellow],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(30.0),
                  width: 80,
                  height: 80,
                  child: Image.asset(
                    'assets/images/black_logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'Registrarse',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight:
                    FontWeight.bold,
                    color: Colors.black,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 3.0,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 35.0),
            Input(
              text: "Nombre",
              type: TextInputType.text,
            ),
            SizedBox(height: 20.0),
            Input(
              text: "Correo",
              type: TextInputType.emailAddress,
            ),
            SizedBox(height: 20.0),
            Input(
              text: "Contraseña",
              type: TextInputType.visiblePassword,
            ),
            SizedBox(height: 40.0),
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
            SizedBox(height: 40.0),
            Button(
              text: "Creálo caserito",
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