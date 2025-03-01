import 'package:flutter/material.dart';
import 'package:netflix_clone/api_constants/api.dart';
import 'package:netflix_clone/core/colors/constants/colors.dart';
import 'package:netflix_clone/presentation/downloads/screen_download.dart';

class Section2 extends StatelessWidget {
  Section2({super.key});
  // final List imageLists = [
  //   "https://image.tmdb.org/t/p/w1280/7iMBZzVZtG0oBug4TfqDb9ZxAOa.jpg",
  //   "https://image.tmdb.org/t/p/w1280/unbKD6sT8fZ9KnfpFLQHVFdrE4T.jpg",
  //   "https://image.tmdb.org/t/p/w1280/uF5v0SPpKzC9dWXIspA1x2zEDKO.jpg"
  // ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kbuttonColorWhite,
              fontSize: 23,
              fontWeight: FontWeight.bold),
        ),
        const Text(
          'We will download a personalized selection of\nmovies and shows for you, so there\nis always something to watch on your\ndevice.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        FutureBuilder(
          future: Api().getDownlaodImages(),
          builder:(context,snapshot){
            if(snapshot.connectionState==ConnectionState.waiting || snapshot.connectionState==ConnectionState.none){
              return Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey[800],
                  radius: size.width * 0.395,
                  child: const CircularProgressIndicator(),
                ),
              );
            }else if(snapshot.hasError){
              return Center(
                  child: CircleAvatar(
                  backgroundColor: Colors.grey[800],
                  radius: size.width * 0.395,
                  child: const CircularProgressIndicator(),
                ),
              );
            }else if(!snapshot.hasData ||snapshot.data!.isEmpty){
              return Text("No data available");
            }else{
              return SizedBox(
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
                    imageList: snapshot.data![0],
                    margin: EdgeInsets.only(left: 170, top: 45),
                    angle: 25,
                    size: Size(size.width * 0.35, size.width * 0.55)),
                DownloadsImageWidgets(
                    imageList: snapshot.data![1],
                    margin: EdgeInsets.only(right: 170, top: 45),
                    angle: -20,
                    size: Size(size.width * 0.35, size.width * 0.55)),
                DownloadsImageWidgets(
                    imageList: snapshot.data![3],
                    radius: 8,
                    margin: EdgeInsets.only(bottom: 35, top: 50),
                    size: Size(size.width * 0.4, size.width * 0.6))
              ],
            ),
          );
            }
          },
           
        ),
      ],
    );
  }
}