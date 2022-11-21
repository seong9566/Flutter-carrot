import 'package:carrot_market/models/product.dart';
import 'package:carrot_market/theme.dart';
import 'package:carrot_market/view/pages/main/home/conponents/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //page는 Scaffold부터 시작
    return Scaffold(
        appBar: _buildAppBar(),
        body: ListView.separated(
            //separated는 리스트 아래에 선을 줌
            itemBuilder: (context, index) => ProductItem(productList[index]), // Product는 통신 받은 데이터
            separatorBuilder: (context, index) => Divider(
                  height: 0,
                  indent: 16, // 안쪽 여백
                  endIndent: 16, // 오른쪽 여백
                  color: Colors.grey, // 선의 색깔은
                ),
            itemCount: productList.length));
  }

  AppBar _buildAppBar() {
    return AppBar(
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
    );
  }
}
