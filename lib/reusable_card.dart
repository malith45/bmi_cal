import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({super.key, required this.col, required this.cardChild});

  final Color col;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: col,
      ),
    );
  }
}
