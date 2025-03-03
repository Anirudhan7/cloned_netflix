import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key,
  required this.title
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
        ),
        
        ),
        Spacer(),
        Icon(Icons.cast,
        color: Colors.white,
        size: 30,
        ),
        kwidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.blue),
          kwidth,
               Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png",
                ),
                fit: BoxFit.cover),
          ),
        ),
        kwidth
      ],
    );
  }
}
