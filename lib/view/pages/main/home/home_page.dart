import 'package:carrot_market/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //page는 Scaffold부터 시작
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(("좌동")),
            SizedBox(width: 4),
            Icon(
              CupertinoIcons.chevron_down,
              size: 15,
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.list_dash)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
        ],
        bottom: PreferredSize(
          // 앱바의 바텀 높이를 지정 하는 뜻 . PreferredSize
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 1,
            height: 1,
            color: Colors.grey,
          ),
        ),
      ),
      body: Container(
        color: Colors.orange[100],
        child: Center(
          child: Text(
            "HomePage body",
            style: textTheme().headline2,
          ),
        ),
      ),
    );
  }
}
