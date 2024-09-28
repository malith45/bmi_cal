import 'main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_icon_label.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const Color activeContainerColor = Color(0xff1d1e33);
const Color inactiveContainerColor = Color(0xff111328);

class InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveContainerColor;
  Color femaleCardColor = inactiveContainerColor;

  void updateColor(int gender) {
    if (gender == 1) {
      maleCardColor = activeContainerColor;
      femaleCardColor = inactiveContainerColor;
    } else {
      maleCardColor = inactiveContainerColor;
    }
    if (gender == 2) {
      femaleCardColor = activeContainerColor;
      maleCardColor = inactiveContainerColor;
    } else {
      femaleCardColor = inactiveContainerColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 1,
            title: const Center(
                child: Text('BMI CALCULATOR',
                    style: TextStyle(color: Colors.white)))),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(1);
                        });
                      },
                      child: ReusableCard(
                        col: maleCardColor,
                        cardChild: ReusableIconLabel(
                            label: 'Male', iconW: FontAwesomeIcons.mars),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(2);
                        });
                      },
                      child: ReusableCard(
                        col: femaleCardColor,
                        cardChild: ReusableIconLabel(
                            label: 'Female', iconW: FontAwesomeIcons.venus),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                col: activeContainerColor,
                cardChild: Container(),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ReusableCard(
                      col: activeContainerColor,
                      cardChild: Container(),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      col: activeContainerColor,
                      cardChild: Container(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xffeb1555),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
