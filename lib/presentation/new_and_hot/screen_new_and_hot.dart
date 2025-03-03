import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants/colors.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/presentation/home_page/screen_home.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/coming_.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/everyones_watching.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            title: Text(
              "New & Hot",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: kbuttonColorWhite),
            ),
            actions: [
              Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
              ),
              kwidth,
              SizedBox(
                child: Container(width: 30, height: 30, color: Colors.blue),
              ),
              kwidth
            ],
            bottom: TabBar(
                labelColor: kbuttonColorBlack,
                unselectedLabelColor: kbuttonColorWhite,
                isScrollable: true,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator: BoxDecoration(
                  color: kbuttonColorWhite,
                  borderRadius: kradious30,
                ),
                tabs: const [
                  Tab(
                    text: "🍷 Coming Soon  ",
                  ),
                  Tab(
                    text: "👀 Everyone's watching   ",
                  ),
                ]),
          ),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(),
            _buildEveryonesWatching(),
          ],
        ),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ValueListenableBuilder(
      valueListenable: top10TvShows,
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: value.length,
          itemBuilder: (context, index) =>
              ComingSoonWidget(movie: value[index]),
        );
      },
    );
  }

  Widget _buildEveryonesWatching() {
    return ValueListenableBuilder(
      valueListenable: trendingNow,
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: value.length,
          itemBuilder: (context, index) =>   EveryonesWatching(movie: value[index]),
        );
      },
    );
  }
}
