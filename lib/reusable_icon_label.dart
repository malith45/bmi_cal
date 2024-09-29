import 'package:flutter/material.dart';
import 'constants.dart';

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
        Text(label, style: kLabelStyle),
      ],
    );
  }
}
