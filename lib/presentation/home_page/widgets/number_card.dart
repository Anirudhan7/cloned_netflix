import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants/colors.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(children: [
        const SizedBox(
          width: 40,
          height: 200,
        ),
        Container(
          width: 130,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: kRadious10,
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  kMainImage),
            ),
          ),
        ),
      ]),
      Positioned(
        left: 13,
        bottom: -40,
        child: BorderedText(
          strokeWidth: 10,
          strokeColor: kwhite,
          child: Text(
            "${index + 1}",
            style: TextStyle(
              color: kbuttonColorBlack,
              fontSize: 135,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
              decorationColor: Colors.black,
            ),
          ),
        ),
      ),
    ]);
  }
}
