import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/constants/colors.dart';
import 'package:netflix_clone/presentation/main_page/widgets/main_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      scaffoldBackgroundColor:backgroundColor,
      fontFamily: GoogleFonts.montserrat().fontFamily,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color:Colors.white),
      )

      ),
      home:ScreenMainPage(),
    )  

    );
  }
}