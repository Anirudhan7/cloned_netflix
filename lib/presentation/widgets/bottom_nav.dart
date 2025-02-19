import 'package:flutter/material.dart';
ValueNotifier<int> indexChangedNotifier =ValueNotifier(0);
class BottomNavWidgets extends StatelessWidget {
  const BottomNavWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexChangedNotifier, builder: (context,int newIndex,_){
   return BottomNavigationBar(
     backgroundColor: Colors.black,
      currentIndex: newIndex,
      onTap: (index){
        indexChangedNotifier.value=index;
      },
      elevation: 0,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,

      selectedIconTheme:IconThemeData(
        color:Colors.white 
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.grey,
      ),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.collections), label: 'New & Hot'),
        BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions), label: 'Fast Laughs'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label:'Search'),
         BottomNavigationBarItem(icon: Icon(Icons.download),label:'Downloads')
      ],
    );
    });
  }
}
