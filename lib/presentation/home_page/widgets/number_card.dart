
import 'package:flutter/material.dart';
import 'package:netflix_clone/api_constants/api_constant.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/presentation/widgets/number_card.dart';
class NumberCard extends StatelessWidget {
  final String image;
  final int index;
  const NumberCard({super.key, required this.image, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: kRadious10,
                  image:  DecorationImage(
                    fit: BoxFit.cover,
                      image: NetworkImage(
                          ApiConstants.imagePath+image))),
            ),
          ],
        ),
        Positioned(
          left: 13,
          bottom: -22,
          child: StrokeText(
            text: "${index+1}",
            textStyle: const TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontSize: 125,
              color: Colors.black
            ),
            strokeColor: Colors.white,
            strokeWidth: 3.0,
            )
        )
      ],
    );
    
  }
}