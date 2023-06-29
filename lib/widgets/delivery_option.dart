import 'package:flutter/material.dart';

class DeliveryOption extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Text(
                'Ingresar datos de envío: ',
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
              labelText: 'Dirección',
              suffixIcon: Icon(Icons.location_on_outlined),
            ),
          ),
          SizedBox(height: 8.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Telefono',
              suffixIcon: Icon(Icons.phone_android_outlined),
            ),
          ),
          SizedBox(height: 15.0),
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
                'Seleccionar dirección: ',
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.home_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20.0),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Los Pinos calle 4, #555",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Zona Sur",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "La Paz",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(
                          Icons.phone_android_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          "+591 75632480",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}