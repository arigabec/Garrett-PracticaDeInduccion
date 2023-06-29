import 'package:flutter/material.dart';

class BuyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  BuyButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 370,
        height: 50,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent.withOpacity(0.5)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight:
              FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
    );
  }
}