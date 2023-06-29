import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/widgets.dart';
import '../widgets/button.dart';
import '../widgets/buy_button.dart';
import '../widgets/input.dart';
import '../widgets/social_media_button.dart';
import 'home_screen.dart';

class ConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmation Screen'),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 420,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.pink, Colors.yellow],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(40.0),
                width: 120,
                height: 120,
                child: Image.asset(
                  'assets/images/white_logo.png',
                ),
              ),
            ),
            SizedBox(height: 35.0),
            Container(
                width: 300,
                height: 120,
                child: Text(
                  'Muchas gracias por tu compra caserito!',
                  textAlign: TextAlign.justify,
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
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  'Orden #9876',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Text(
                  '• Polera Sopa de Mani x1',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(height: 120.0),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Column (
                  children: [
                    Text(
                      'Subtotal    160 Bs',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Yapita             0 Bs',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      width: 180,
                      height: 2, // Adjust line thickness
                      color: Colors.grey, // Customize color
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Total           160 Bs',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                )
              ),
            ),
            SizedBox(height: 50.0),
            BuyButton(
                text: "Volver a la página principal",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}