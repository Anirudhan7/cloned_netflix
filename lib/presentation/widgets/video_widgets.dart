import 'package:flutter/material.dart';
import 'package:netflix_clone/api_constants/api_constant.dart';
import 'package:netflix_clone/core/colors/constants/colors.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';

class VideoWidget extends StatelessWidget {
  final String image;

  const VideoWidget({
    super.key,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
           ApiConstants.imagePath+image,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black.withOpacity(0.5),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.volume_off,
                size: 30,
                color: kwhite,
              ),
            ),
          ),
        ),
      ],
    );
  }
}