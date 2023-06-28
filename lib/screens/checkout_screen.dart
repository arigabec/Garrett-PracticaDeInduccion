import 'package:flutter/material.dart';

import '../widgets/payment_option.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String selectedOption = '';

  void selectOption(String option) {
    setState(() {
      selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout Screen'),
      ),
      body: Column(
        children: [
          SizedBox(height: 30.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'Seleccionar un método de pago:',
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PaymentOptionButton(
                  option: 'Tarjeta',
                  icon: Icons.credit_card,
                  isSelected: selectedOption == 'Card',
                  onPressed: () => selectOption('Card'),
                ),
                PaymentOptionButton(
                  option: 'Pago con QR',
                  icon: Icons.qr_code,
                  isSelected: selectedOption == 'QR',
                  onPressed: () => selectOption('QR'),
                ),
                PaymentOptionButton(
                  option: 'Efectivo',
                  icon: Icons.money,
                  isSelected: selectedOption == 'Cash',
                  onPressed: () => selectOption('Cash'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Builder(
            builder: (BuildContext context) {
              if (selectedOption == 'Card') {
                return Text('Option A is selected');
              } else if (selectedOption == 'QR') {
                return Text('Option B is selected');
              } else if (selectedOption == 'Cash') {
                return Text('Option C is selected');
              } else {
                return Text('No option is selected');
              }
            },
          ),
        ],
      ),
    );
  }
}
