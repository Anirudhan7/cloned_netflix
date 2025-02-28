import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/presentation/home_page/widgets/background_card.dart';
import 'package:netflix_clone/presentation/home_page/widgets/number_title_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                  onNotification: (notification) {
                    final ScrollDirection direction = notification.direction;
                    print(direction);
                    if (direction == ScrollDirection.reverse) {
                      scrollNotifier.value = false;
                    } else if (direction == ScrollDirection.forward) {
                      scrollNotifier.value = true;
                    }
                    return true;
                  },
                  child: Stack(
                    children: [
                      ListView(
                        children: const [
                          BackgroundCard(),
                          MainTitleCard(title: "Released in the past year"),
                          MainTitleCard(title: "Trending Now"),
                          kheight,
                          MainTitleCard(title: "Tense Dramas"),
                          kheight,
                          NumberTitleCard(),
                          kheight,
                          MainTitleCard(title: "South Indian Cinemas"),
                          kheight
                        ],
                      ),
                      scrollNotifier.value == true
                          ? AnimatedContainer(
                            duration: Duration(milliseconds: 1000),
                            child: Container(
                                width: double.infinity,
                                height: 80,
                                color: Colors.black.withOpacity(0.5),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.network(
                                          "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*ty4NvNrGg4ReETxqU2N3Og.png",
                                          width: 60,
                                          height: 60,
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.cast,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        kwidth,
                                        Container(
                                            width: 30,
                                            height: 30,
                                            color: Colors.blue),
                                        kwidth
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "TV Shows",
                                       style: kHomeTitleText
                                        ),
                                        Text("Movies",style:kHomeTitleText ),
                                        Text("Categories",style: kHomeTitleText,)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                          )
                          : kheight
                    ],
                  ));
            }));
  }
}
