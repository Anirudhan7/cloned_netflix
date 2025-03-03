import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/models/movie.dart';
import 'package:netflix_clone/presentation/home_page/widgets/number_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  final ValueNotifier<List<Movies>> listNotifier;
  const NumberTitleCard({
    super.key,
    required this.listNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: "Top 10 Tv shows in India Today"),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ValueListenableBuilder(
            valueListenable: listNotifier,
            builder: (context, value, child) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.length,
                itemBuilder: (context, index) {
                  var data = value[index];
                  return NumberCard(image: data.posterPath, index: index);
                },
              );
            },
          ),
        )
      ],
    );
  }
}
