import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CashPayment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            children: [
              SizedBox(height: 20.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Ingresar el monto con el que pagará: ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:
                    FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 350,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Bs. ',
                  ),
                ),
              ),
            ]
        ),
    );
  }
}