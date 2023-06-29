import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_projects/screens/login_screen.dart';
import 'package:flutter_projects/screens/register_screen.dart';
import 'package:flutter_projects/widgets/button.dart';

class WelcomeScreen extends StatefulWidget{
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();

}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 400,
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
                        margin: EdgeInsets.all(70.0),
                        width: 120,
                        height: 120,
                        child: Image.asset(
                          'assets/images/white_logo.png',
                        ),
                      ),
                      Text(
                        'Bienvenidos a DressApp',
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
            SizedBox(height: 100.0),
            Button(
                text: "Registrarse",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                },
              ),
            SizedBox(height: 20.0),
            Button(
                text: "Iniciar Sesión",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
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