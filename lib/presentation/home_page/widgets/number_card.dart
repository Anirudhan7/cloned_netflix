import 'package:flutter/material.dart';
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
          height: 150,
        ),
        Container(
          width: 150,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: kRadious20,
            image: const DecorationImage(
              image: NetworkImage(
                  "https://image.tmdb.org/t/p/w1280/8o8kiBkWFK3gVytHdyzEWUBXVfK.jpg"),
            ),
          ),
        ),
      ]),
      Positioned(
        left: 10,
        bottom: 10,
          child: Text(
        "$index",
        style: TextStyle(fontSize: 100),
      ))
    ]);
  }
}
