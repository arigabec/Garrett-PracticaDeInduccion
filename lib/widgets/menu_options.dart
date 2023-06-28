import 'package:flutter/material.dart';

class MenuOptions extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData icon;
  final double width;

  MenuOptions({
    required this.text,
    required this.onPressed,
    required this.icon,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          elevation: 5.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black38,
            ),
            SizedBox(width: 3.0),
            Text(
              text,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}