import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants/colors.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/presentation/home_page/widgets/custom_button_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widgets.dart';

class EveryonesWatching extends StatelessWidget {
  const EveryonesWatching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        kheight,
        Text(
          "Friends",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kheight,
        Text(
          "This hit sitcom follows the merry misadventurus of size 20-something pals as they navigate the pitfalls os work, life and love in 1990s Manhattan",
          style: TextStyle(color: kGreyColor),
        ),
        kheight50,
        VideoWidget(),
        kheight,
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonWidget(
              icon: Icons.share,
              title: "Share",
              iconSize: 25,
              textSize: 16,
            ),
            kwidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: "My List",
              iconSize: 25,
              textSize: 16,
            ),
            kwidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: "Remind me",
              iconSize: 25,
              textSize: 16,
            ),
            kwidth,
          ],
        )
      ],
    );
  }
}
