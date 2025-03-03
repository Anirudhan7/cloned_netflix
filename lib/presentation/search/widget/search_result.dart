import 'package:flutter/material.dart';
import 'package:netflix_clone/api_constants/api_constant.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/presentation/home_page/screen_home.dart';
import 'package:netflix_clone/presentation/search/widget/title.dart';

// const imageUrl =
//     "https://image.tmdb.org/t/p/w1280/7iMBZzVZtG0oBug4TfqDb9ZxAOa.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        kheight,
        Expanded(
            child: ValueListenableBuilder(
          valueListenable: topRated,
          builder: (context, value, child) {
            return GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1 / 1.4,
              children: List.generate(value.length, (index) {
                return MainCad(
                  imageUrl: value[index].posterPath,
                );
              }),
            );
          },
        ))
      ],
    );
  }
}
class MainCad extends StatelessWidget {
  const MainCad({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(ApiConstants.imagePath + imageUrl),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}

