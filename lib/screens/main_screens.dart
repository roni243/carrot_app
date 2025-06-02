import 'package:carrot_app/screens/home/home_screen.dart';
import 'package:carrot_app/screens/my_carrot/my_carrot.dart';
import 'package:carrot_app/screens/near_me/near_me.dart';
import 'package:carrot_app/screens/neighborhood_life/neighborhood_life_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'chatting/chatting.dart';

class MainScreens extends StatefulWidget {

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int selectedIndex = 0;
  List<int> loadPages = [0]; // 크기는 1

  void selectBottonMenu(int index){
    //List<int> pages = loadPages; // [0]

    if(!loadPages.contains(index)) {
      loadPages.add(index); // [0,1]
    }

    selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          loadPages.contains(0) ? const HomeScreen() : Container(),
          loadPages.contains(1) ? const NeighborhoodLifeScreen() : Container(),
          loadPages.contains(2) ? const NearMeScreen() : Container(),
          loadPages.contains(3) ? const ChattingScreen() : Container(),
          loadPages.contains(4) ? const MyCarrotScreen() : Container(),
        ]
      ),
      bottomNavigationBar: _bottonNavigationBar(),
    );
  }

  Widget _buildScreen(int index){
    switch(index) {
      case 0: return HomeScreen();
      case 1: return NeighborhoodLifeScreen();
      case 2: return NearMeScreen();
      case 3: return ChattingScreen();
      case 4: return MyCarrotScreen();
      default:
        return Container();
    }
  }

  BottomNavigationBar _bottonNavigationBar() {
    return BottomNavigationBar(
      //showSelectedLabels: false,
      //showUnselectedLabels: false,
      //type: BottomNavigationBarType.shifting,
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.black54,
      currentIndex: selectedIndex,
      onTap: selectBottonMenu,
      // onTap: (index) {
      //   selectedIndex =index;
      //   setState(() {});
      //   //print(index);
      // },
      items: [
        BottomNavigationBarItem(label: "홈", icon: Icon(CupertinoIcons.home)),
        BottomNavigationBarItem(label: "동네생활", icon: Icon(CupertinoIcons.square_on_square)),
        BottomNavigationBarItem(label: "내 근처", icon: Icon(CupertinoIcons.placemark)),
        BottomNavigationBarItem(label: "채팅", icon: Icon(CupertinoIcons.chat_bubble_2)),
        BottomNavigationBarItem(label: "나의 당근", icon: Icon(CupertinoIcons.person)),
      ],
    );
  }
}
