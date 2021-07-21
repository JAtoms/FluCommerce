import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voice_radio/constants/constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({required this.color, required this.isSelected});

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding / 4, right: 5),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected == true ? color : Colors.white,
          )),
      child: DecoratedBox(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
