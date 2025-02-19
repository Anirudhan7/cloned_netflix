import 'package:flutter/material.dart';

import '../widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  const ScreenDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(50) ,
        child: AppBarWidget(
          
        ),
      ),
      body: Text('ScreeenDownloads'),
    );
  }
}