import 'package:flutter/material.dart';
import 'package:netflix_clone/api_constants/api_constant.dart';
import 'package:netflix_clone/core/colors/constants/colors.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/presentation/home_page/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key,required this.imageUrl });
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return  Stack(
            children: [
              Container(
                width: double.infinity,
                height: 600,
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(ApiConstants.imagePath+imageUrl),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CustomButtonWidget(
                        title: 'My List',
                        icon: Icons.add,
                      ),
                      _playButton(),
                      CustomButtonWidget(icon: Icons.info, title: "Info")
                    ],
                  ),
                ),
              )
            ],
          );
  }
}
TextButton _playButton() {
  return TextButton.icon(
    onPressed: () {},
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      backgroundColor: kwhite,
    ),
    icon: const Icon(
      Icons.play_arrow,
      size: 25,
      color: kbuttonColorBlack,
    ),
    label: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        'Play',
        style: TextStyle(fontSize: 20, color: kbuttonColorBlack),
      ),
    ),
  );
}
