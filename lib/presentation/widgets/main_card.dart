import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadious20,
           
        image:const DecorationImage(
          image: NetworkImage(
              "https://image.tmdb.org/t/p/w1280/8o8kiBkWFK3gVytHdyzEWUBXVfK.jpg"),
        ),
      ),
    );
  }
}