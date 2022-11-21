import 'package:carrot_market/models/product.dart';
import 'package:carrot_market/theme.dart';
import 'package:carrot_market/util/my_number_fotmat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  const ProductDetail(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: textTheme().bodyText1,
          ),
          SizedBox(height: 4.0),
          Text("${product.address}*${product.publishedAt}"),
          SizedBox(height: 4.0),
          Text(numberPriceFormat("${product.price}"), style: textTheme().headline2),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            // if문, visibilty자리
            children: [
              _buildIcons(iconData: CupertinoIcons.chat_bubble_2, count: product.commentsCount),
              const SizedBox(width: 4),
              _buildIcons(iconData: CupertinoIcons.heart, count: product.heartCount),
            ],
          ),
        ],
      ),
    );
  }

  // 이 페이지에서만 재사용하는 위젯
  // 아이콘을 재사용하기 위해 위젯으로 만들어줌
  Widget _buildIcons({required IconData iconData, required int count}) {
    return Visibility(
      visible: count > 0, // visible : count가 0 보다 클때만 보여준다, 이 위젯이 전역으로 사용된다면 사용하는 부분에서 걸어준다
      child: Row(
        children: [
          Icon(iconData),
          Text("${count}"), // text는 문자열만 들어가기 때문에 int 형을 바인딩 시켜줌.
        ],
      ),
    );
  }
}
