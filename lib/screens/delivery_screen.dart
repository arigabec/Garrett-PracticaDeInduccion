import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/checkout_screen.dart';
import 'package:flutter_projects/widgets/card_payment.dart';
import 'package:flutter_projects/widgets/cash_payment.dart';
import 'package:flutter_projects/widgets/delivery_option.dart';
import 'package:flutter_projects/widgets/pickup_option.dart';
import '../widgets/buy_button.dart';
import '../widgets/payment_option.dart';
import '../widgets/qr_payment.dart';

class DeliveryScreen extends StatefulWidget {
  @override
  _DeliveryScreenState createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
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
        title: Text('Delivery Screen'),
      ),
      body: Column(
        children: [
          SizedBox(height: 30.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Seleccionar tipo de envío:',
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
                  option: 'Delivery',
                  icon: Icons.delivery_dining_outlined ,
                  isSelected: selectedOption == 'Delivery',
                  onPressed: () => selectOption('Delivery'),
                ),
                PaymentOptionButton(
                  option: 'Pickup',
                  icon: Icons.car_rental_outlined,
                  isSelected: selectedOption == 'Pickup',
                  onPressed: () => selectOption('Pickup'),
                ),
              ],
            ),
          ),
          Builder(
            builder: (BuildContext context) {
              if (selectedOption == 'Delivery') {
                return DeliveryOption();
              } else if (selectedOption == 'Pickup') {
                return PickupOption();
              } else {
                return Text('Ninguna opción está seleccionada');
              }
            },
          ),
          SizedBox(height: 15.0),
          BuyButton(
              text: "Continuar con el pago",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutScreen(),
                  ),
                );
              },
          ),
        ],
      ),
    );
  }
}
