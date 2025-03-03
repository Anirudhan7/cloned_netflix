import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/downloads/screen_download.dart';
import 'package:netflix_clone/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_clone/presentation/home_page/screen_home.dart';
import 'package:netflix_clone/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_clone/presentation/search/screen_search.dart';
import 'package:netflix_clone/presentation/widgets/bottom_nav.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});
  final _pages=[ScreenHome(),
  ScreenNewAndHot(),
  ScreenFastLaugh(),
  ScreenSearch(),
  ScreenDownload()
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int value, _) {
            return _pages[value];
          }),
      bottomNavigationBar: const BottomNavWidgets(),
    );
  }
}
