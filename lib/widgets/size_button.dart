import 'package:flutter/material.dart';

class SizeButton extends StatelessWidget {
  final String text;

  const SizeButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 3,
            offset: Offset(2, 2), // changes the position of the shadow
          ),
        ],
        color: Colors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
    );
  }
}