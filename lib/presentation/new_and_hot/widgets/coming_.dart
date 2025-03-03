import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants/colors.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/models/movie.dart';
import 'package:netflix_clone/presentation/home_page/widgets/custom_button_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widgets.dart';

class ComingSoonWidget extends StatelessWidget {
  final Movies movie;
  const ComingSoonWidget({
    required this.movie,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "FEB",
                style: TextStyle(fontSize: 16, color: kGreyColor),
              ),
              Text(
                '11',
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             VideoWidget(image: movie.backDropPath),
              kheight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    movie.title,
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: -5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomButtonWidget(
                        icon: Icons.all_out_sharp,
                        title: "Remind me",
                        iconSize: 20,
                        textSize: 12,
                      ),
                       kwidth,
                      kwidth,
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: "Info",
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kwidth
                    ],
                  )
                ],
              ),
              kheight,
               Text("Comming on friday"),
              kheight,
              Text(
                movie.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kheight,
              Text(
                 movie.overView,
                style: TextStyle(color: kGreyColor),
              )
            ],
          ),
        )
      ],
    );
  }
}

