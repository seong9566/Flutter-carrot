import 'package:intl/intl.dart';

String numberPriceFormat(String price) {
  final formatter = NumberFormat("#,###원"); // 숫자 포맷법, intl 라이브러리가 가지고 있는 포맷법. pub_dev의 intl에서 사용법 확인 가능
  return formatter.format(int.parse(price));
}
