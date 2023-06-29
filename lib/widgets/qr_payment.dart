import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class QRPayment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            width: 360,
            height: 360,
            child: Image.asset(
              "assets/images/qr.png"
            )
          ),
          SizedBox(
            width: 150,
            height: 40,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent.withOpacity(0.5)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              onPressed: () {

              },
              child: Row(
                children: [
                  Text(
                    "Descargar",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                      FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Icon(
                    Icons.download,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
        ]
    );
  }
}