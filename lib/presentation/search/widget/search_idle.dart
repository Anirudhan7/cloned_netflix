import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants/colors.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/presentation/search/widget/title.dart';

const imageUrl =
    'https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/tPpYGm2mVecue7Bk3gNVoSPA5qn.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Top Searchers',),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => TopSearchItemTile(),
              separatorBuilder: (ctx, index) => kheight20,
              itemCount: 10),
        )
      ],
    );
  }
}



class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
        Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(
              color: kwhite, fontWeight: FontWeight.bold, fontSize: 16),
        )),
       
        CircleAvatar(
          backgroundColor: kwhite,
          radius: 27,
          child:CircleAvatar(
            backgroundColor:kbuttonColorBlack,
            radius: 25,
            child:  Icon(CupertinoIcons.play_fill,color:kwhite),
          ) ,
        )
      ],
    );
  }
}
