import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentOptionButton extends StatelessWidget {
  final String option;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onPressed;

  const PaymentOptionButton({
    required this.option,
    required this.icon,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container (
        width: 110,
        height: 110,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: isSelected ? Colors.deepPurpleAccent.withOpacity(0.5) : Colors.grey.withOpacity(0.6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                  icon,
                  size: 60,
                  color: Colors.white,

              ),
              Text(
                  option,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight:
                    FontWeight.bold,
                    color: Colors.white,
                  ),
              ),
            ],
          ),
        ),
    );
  }
}
