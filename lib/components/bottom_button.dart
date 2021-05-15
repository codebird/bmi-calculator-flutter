import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.buttonText, this.onTap});

  final String buttonText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: kButtonText,
          ),
        ),
        width: double.infinity,
        margin: EdgeInsets.only(top: 15.0),
        height: kBottomButtonHeight,
        color: kBottomButtonColor,
      ),
    );
  }
}
