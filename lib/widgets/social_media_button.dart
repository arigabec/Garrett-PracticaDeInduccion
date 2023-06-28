import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButton extends StatelessWidget {
  final Color color;
  final IconData icon;

  SocialButton({
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              shape:
                BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                    offset: Offset(2, 2),
                  ),
                ],
            ),
            child: CircleAvatar(
                radius: 30,
                backgroundColor: color,
                child: FaIcon(
                  icon,
                  color: Colors.white,
                  size: 20.0,
                ),
            ),
        ),
    );
  }
}