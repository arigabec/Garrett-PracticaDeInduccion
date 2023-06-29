import 'package:flutter/material.dart';
import 'package:flutter_projects/widgets/buy_button.dart';
import 'package:flutter_projects/widgets/pickup_option.dart';

class ReserveScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserve Screen'),
      ),
      body: Column(
        children: [
          PickupOption(),
          SizedBox(height: 25.0),
          Container(
            width: 330,
            child: Text(
              "NOTA: tiene 24hrs para aproximarse a la sucursal seleccionada, "
                  "de otro modo, perderá la reserva de la prenda!",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
          SizedBox(height: 25.0),
          BuyButton(
              text: "Reservar prenda",
              onPressed: () {}
          ),
        ],
      )
    );
  }
}