import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  @override
  const BottomButton(
      {super.key, required this.btnText, required this.onPressed});

  final String btnText;
  final onPressed;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(
            btnText,
            style: kLargeButtonStyle,
          ),
        ),
        color: Color(0xffeb1555),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 25),
      ),
    );
  }
}
