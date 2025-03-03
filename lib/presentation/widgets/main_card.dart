import 'package:flutter/material.dart';
import 'package:netflix_clone/api_constants/api_constant.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
   required this.image
  });
  final String image;
 @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: kRadious10,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(ApiConstants.imagePath+image))),
    );
  }
}
