import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.icon,
      required this.title,
      this.iconSize = 30,
      this.textSize = 18});

  final IconData icon;
  final String title;
  final double iconSize;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhite,
          size: iconSize,
        ),
        Text(
          title,
          style:
               TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
