// ignore_for_file: prefer_const_constructors
// ignore: prefer_const_literals_to_create_immutables
// ignore: prefer_const_literals_to_create_immutables
import 'package:carrot_market/view/pages/main/chatting/chatting_page.dart';
import 'package:carrot_market/view/pages/main/home/home_page.dart';
import 'package:carrot_market/view/pages/main/my_carrot/my_carrot.dart';
import 'package:carrot_market/view/pages/main/near_me/near_me_page.dart';
import 'package:carrot_market/view/pages/main/neighborhood_life/neighborhood_life_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0; //_를 쓴이유 : 여기서만 사용하기 때문. 그리고 계속 변하기 때문에 final을 넣지 않았다.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(),
      body: _buildIndexedStack(),
    );
  }

  IndexedStack _buildIndexedStack() {
    return IndexedStack(
      // 페이지를 스택으로 쌓아두고 필요한 페이지를 빼서 쓰는 개념
      index: _selectedIndex, // 해당 페이지
      children: [
        HomePage(),
        NeighborhoodLifePage(),
        NearMePage(),
        MyCarrot(),
        ChattingPage(),
      ],
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },

      currentIndex: _selectedIndex, // 바텀 네비게이션의 색깔이 현재 선택된 인덱스로 바뀐다.
      items: [
        BottomNavigationBarItem(
          // BottomNavigation에 라벨은 필수이다.
          label: "홈",
          icon: Icon(CupertinoIcons.home),
        ),
        BottomNavigationBarItem(
          label: "동네생활",
          icon: Icon(CupertinoIcons.square_on_square),
        ),
        BottomNavigationBarItem(
          label: "내 근처",
          icon: Icon(CupertinoIcons.placemark),
        ),
        BottomNavigationBarItem(
          label: "채팅",
          icon: Icon(CupertinoIcons.chat_bubble_2),
        ),
        BottomNavigationBarItem(
          label: "나의 당근",
          icon: Icon(CupertinoIcons.chat_bubble),
        ),
      ],
    );
  }
}
