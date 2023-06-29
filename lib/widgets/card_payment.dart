import 'package:flutter/material.dart';

class CardPayment extends StatelessWidget {
  final String cardNumber;
  final String cvc;
  final String expiryDate;

  const CardPayment({
    Key? key,
    required this.cardNumber,
    required this.cvc,
    required this.expiryDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(
                  'Ingresar datos: ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:
                    FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Número de tarjeta',
                suffixIcon: Icon(Icons.credit_card),
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'CVC',
                      suffixIcon: Icon(Icons.lock),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Expiración',
                      suffixIcon: Icon(Icons.calendar_month),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            SizedBox(
              width: 130,
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
                child: Text(
                  "Registrar",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:
                    FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(
                  'Seleccionar tarjeta: ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:
                    FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: 500,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                    child: Row(
                      children: [
                        Container(
                          width: 110,
                          height: 110,
                          child: Image.asset(
                              "assets/images/card.png"
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8.0),
                            Text(
                              'Número de tarjeta: $cardNumber',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'CVC: $cvc',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Expiración: $expiryDate',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    )
                ),
              ),
            ),
          ],
        ),
    );
  }
}