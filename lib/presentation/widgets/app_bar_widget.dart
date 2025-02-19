import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Downloads'),
        Spacer(),
        Icon(Icons.cast,
        color: Colors.white,
        ),
        Container(
          width: 40,
          height: 30,
          color: Colors.blue),
          SizedBox(
            width: 1,
          )
      ],
    );
  }
}
