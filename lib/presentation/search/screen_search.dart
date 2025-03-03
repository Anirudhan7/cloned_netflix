import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/api_constants/api.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/models/movie.dart';
import 'package:netflix_clone/presentation/search/widget/search_idle.dart';
import 'package:netflix_clone/presentation/search/widget/search_result.dart';

// class ScreenSearch extends StatelessWidget {
//   const ScreenSearch({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CupertinoSearchTextField(
//               backgroundColor: Colors.grey.withOpacity(0.4),
//               prefixIcon: const Icon(
//                 CupertinoIcons.search,
//                 color: Colors.grey,
//               ),
//               suffixIcon: const Icon(
//                 CupertinoIcons.xmark_circle_fill,
//                 color: Colors.grey,
//               ),
//               style: TextStyle(color: Colors.white),
//             ),
//       kheight,
//           //  Expanded(
//           //    child: SearchIdleWidget(
             
//           //    ),
//           //  )
//            Expanded(
//              child: SearchResultWidget(
             
//              ),
//            )
//           ],
//         ),
//       )),
//     );
//   }
// }

final ValueNotifier<bool> searching = ValueNotifier(false);
ValueNotifier<List<Movies>> searchResult = ValueNotifier([]);

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              onChanged: (value) async {
                if (value.isNotEmpty) {
                  searching.value = true;
                  searchResult.value = await Api().searchResult(value);
                } else {
                  searching.value = false;
                  searchResult.value.clear();
                }
              },
              padding: const EdgeInsets.symmetric(vertical: 12),
              backgroundColor: Colors.grey.withOpacity(0.3),
              prefixIcon: const Icon(CupertinoIcons.search, color: Colors.grey),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.white,
              ),
              style: const TextStyle(color: Colors.white),
            ),
            kheight,
            ValueListenableBuilder(
              valueListenable: searching,
              builder: (context, value, child) {
                if (value) {
                  return Expanded(child: SearchResultWidget());
                } else {
                  return Expanded(child: SearchIdleWidget());
                }
              },
            )
          ],
        ),
      )),
    );
  }
}