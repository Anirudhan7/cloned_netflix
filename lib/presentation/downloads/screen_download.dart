import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants/colors.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';

import '../widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});
  final _widgetList = [const _SmartDownloads(), Section2(), Section3()];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: "Downloads",
        ),
      ),
      body: ListView.separated(
          padding: EdgeInsets.all(10),
          itemBuilder: (ctx, index) => _widgetList[index],
          separatorBuilder: (ctx, index) => SizedBox(
                height: 25,
              ),
          itemCount: _widgetList.length),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageLists = [
    "https://image.tmdb.org/t/p/w1280/7iMBZzVZtG0oBug4TfqDb9ZxAOa.jpg",
    "https://image.tmdb.org/t/p/w1280/unbKD6sT8fZ9KnfpFLQHVFdrE4T.jpg",
    "https://image.tmdb.org/t/p/w1280/uF5v0SPpKzC9dWXIspA1x2zEDKO.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kbuttonColorWhite,
              fontSize: 23,
              fontWeight: FontWeight.bold),
        ),
        Text(
          'We will download a personalized selection of\nmovies and shows for you, so there\nis always something to watch on your\ndevice.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  radius: size.width * 0.4,
                ),
              ),
              DownloadsImageWidgets(
                  imageList: imageLists[0],
                  margin: EdgeInsets.only(left: 170, top: 45),
                  angle: 25,
                  size: Size(size.width * 0.35, size.width * 0.55)),
              DownloadsImageWidgets(
                  imageList: imageLists[1],
                  margin: EdgeInsets.only(right: 170, top: 45),
                  angle: -20,
                  size: Size(size.width * 0.35, size.width * 0.55)),
              DownloadsImageWidgets(
                  imageList: imageLists[2],
                  radius: 8,
                  margin: EdgeInsets.only(bottom: 35, top: 50),
                  size: Size(size.width * 0.4, size.width * 0.6))
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: kbuttonColorBlue,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: kwhite, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          onPressed: () {},
          color: kbuttonColorWhite,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: kbuttonColorBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.settings,
          color: kwhite,
        ),
        kwidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class DownloadsImageWidgets extends StatelessWidget {
  const DownloadsImageWidgets(
      {super.key,
      required this.imageList,
      this.angle = 0,
      required this.margin,
      required this.size,
      this.radius = 10});
  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            // margin: margin,
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageList),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
