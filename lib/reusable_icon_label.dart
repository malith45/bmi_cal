import 'package:flutter/material.dart';

const labelStyle = TextStyle(fontSize: 18, color: Color(0xffebecee));

class ReusableIconLabel extends StatelessWidget {
  ReusableIconLabel({super.key, required this.label, required this.iconW});

  final String label;
  final IconData iconW;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconW,
          size: 80,
        ),
        Text(label, style: labelStyle),
      ],
    );
  }
}
