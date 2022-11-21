import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrot_market/models/product.dart';
import 'package:carrot_market/view/pages/main/home/conponents/product_detail.dart';
import 'package:flutter/material.dart';

//선택적 매개변수가 있다면 제일 앞에 쓴다.
class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            _buildProductImage(), // 여기서만 쓰인다면 메서드, 아니라면 위젯
            const SizedBox(width: 16),
            ProductDetail(product), // 이 부분은 리버팟 사용시 productViewModel 프로바이더에서 읽어오면 된다. -> ref.read(productViewModel)
          ],
        ),
      ),
    );
  }

  ClipRRect _buildProductImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: CachedNetworkImage(
        imageUrl: product.urlToImage,
        width: 115,
        height: 115,
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, url, progress) => CircularProgressIndicator(
          value: progress.progress,
        ),
      ),
      // child: Image.network(
      //   //웹으로 열면 이미지가 깨진다 왜? -> CORS정책에서 웹을 팅겨내고 있기 때문이다. 앱으로 열면 보인다.
      //   product.urlToImage,
      //   width: 115,
      //   height: 115,
      //   fit: BoxFit.cover,
      // ),
    );
  }
}
