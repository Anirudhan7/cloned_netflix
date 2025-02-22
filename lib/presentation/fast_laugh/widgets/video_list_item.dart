import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants/colors.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //leftSide
                CircleAvatar(
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.volume_mute),
                  ),
                ),
                //rightSide
                Column(
                  children: [
                    CircleAvatar(),
                    VideoActionWidget(icon: Icons.emoji_emotions, title: 'LOL'),
                    kheight,
                    VideoActionWidget(icon: Icons.add, title: 'My List'),
                    kheight,
                    VideoActionWidget(icon: Icons.share, title: 'Share'),
                    kheight,
                    VideoActionWidget(icon: Icons.play_arrow, title: 'Play'),
                    kheight,
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
        Text(
          title,
          style: TextStyle(color: kwhite, fontSize: 14),
        ),
      ],
    );
  }
}
