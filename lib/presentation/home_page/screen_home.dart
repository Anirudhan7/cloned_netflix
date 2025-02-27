import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/presentation/home_page/widgets/number_card.dart';
import 'package:netflix_clone/presentation/widgets/main_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(children: [
            MainTitleCard(title: "Released in the past year"),
            MainTitleCard(
              title: "Trending Now",
            ),
            MainTitleCard(
              title: "Tense Dramas",
            ),
            Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: "Top 10 Tv Shows In India Today"),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) =>  NumberCard(
                index:index,
              ),
            ),
          ),
        )
      ],
    ),
            MainTitleCard(
              title: "South Indian Cinemask",
            ),
          ]),
        ),
      ),
    );
  }
}
