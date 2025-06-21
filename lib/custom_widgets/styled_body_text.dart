import 'package:flutter/material.dart';

class StyledBodyText extends StatelessWidget {
  const StyledBodyText({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.brown[900],
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
