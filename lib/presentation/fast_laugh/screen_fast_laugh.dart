import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/fast_laugh/widgets/video_list_item.dart';
import 'package:netflix_clone/presentation/home_page/screen_home.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ValueListenableBuilder(
      valueListenable: trendingNow,
      builder: (context, value, child) {
        return PageView(
            scrollDirection: Axis.vertical,
            children: List.generate(value.length, (index) {
              return VideoListItem(
                movie: value[index],
                index: index,
              );
            }));
      },
    )));
  }
}
