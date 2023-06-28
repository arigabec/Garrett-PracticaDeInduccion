import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String text;
  final TextInputType type;

  Input({
    required this.text,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          labelText: text,
          border: OutlineInputBorder(),
        ),
        keyboardType: type,
      ),
    );
  }
}