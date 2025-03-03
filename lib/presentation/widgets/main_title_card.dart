import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/models/movie.dart';
import 'package:netflix_clone/presentation/widgets/main_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  final ValueNotifier<List<Movies>> listNotifier;
  const MainTitleCard({
    super.key,
    required this.title,
    required this.listNotifier,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ValueListenableBuilder(
            valueListenable: listNotifier,
            builder: (context, value, child) {
              return ListView.builder(
                itemCount: value.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var data = value[index];
                  return MainCard(image: data.posterPath);
                },
              );
            },
          ),
        )
      ],
    );
  }
}