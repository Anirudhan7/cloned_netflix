import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/api_constants/api_constant.dart';
import 'package:netflix_clone/core/colors/constants/colors.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/models/movie.dart';
import 'package:netflix_clone/presentation/home_page/screen_home.dart';
import 'package:netflix_clone/presentation/search/widget/title.dart';


class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches'),
        kheight,
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: topRated,
            builder: (context, value, child) {
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>  TopSearchItemTile(movie: value[index],),
                  separatorBuilder: (context, index) => kheight20,
                  itemCount: 10);
            },
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
   TopSearchItemTile({super.key, required this.movie});

  final Movies movie; 

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.4,
          height: 95,
          decoration:  BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(ApiConstants.imagePath+movie.backDropPath))),
        ),
        kwidth,
         Expanded(
          child: Text(
            movie.title,
            style: TextStyle(
                color: kwhite, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const CircleAvatar(
          backgroundColor: kwhite,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kbuttonColorBlack,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kwhite,
            ),
          ),
        )
      ],
    );
  }
}
// final ValueNotifier<bool> searching = ValueNotifier(false);
// ValueNotifier<List<Movies>> searchResult = ValueNotifier([]);

// class ScreenSearch extends StatefulWidget {
//   const ScreenSearch({super.key});

//   @override
//   State<ScreenSearch> createState() => _ScreenSearchState();
// }

// class _ScreenSearchState extends State<ScreenSearch> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CupertinoSearchTextField(
//               onChanged: (value) async {
//                 if (value.isNotEmpty) {
//                   searching.value = true;
//                   searchResult.value = await Api().searchResult(value);
//                 } else {
//                   searching.value = false;
//                   searchResult.value.clear();
//                 }
//               },
//               padding: const EdgeInsets.symmetric(vertical: 12),
//               backgroundColor: Colors.grey.withOpacity(0.3),
//               prefixIcon: const Icon(CupertinoIcons.search, color: Colors.grey),
//               suffixIcon: const Icon(
//                 CupertinoIcons.xmark_circle_fill,
//                 color: Colors.white,
//               ),
//               style: const TextStyle(color: Colors.white),
//             ),
//             kheight,
//             ValueListenableBuilder(
//               valueListenable: searching,
//               builder: (context, value, child) {
//                 if (value) {
//                   return Expanded(child: SearchResultWidget());
//                 } else {
//                   return Expanded(child: SearchIdleWidget());
//                 }
//               },
//             )
//           ],
//         ),
//       )),
//     );
//   }
// }

