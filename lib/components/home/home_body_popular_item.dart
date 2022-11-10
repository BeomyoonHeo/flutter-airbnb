import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBodyPopularItem extends StatelessWidget {
  HomeBodyPopularItem({required this.id, Key? key}) : super(key: key);

  final id;

  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    //전체 1000 이라면 popularItemWidth = 700 / 3 - 5 = 228
    double popularItemWidth = getBodyWidth(context) / 3 - 5;
    return Container(
      color: Colors.green,
      // 나중에 지웠다 추가했다 해보기
      constraints: const BoxConstraints(
        minWidth: 320, // 휴대폰의 최소 width 값
      ),
      child: SizedBox(
        width: popularItemWidth,
        height: 100,
        child: Column(
          children: [
            _buildPopularItemImage(),
            _buildPopularItemStar(),
            _buildPopularItemComment(),
            _buildPopularItemInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return SizedBox();
  }

  Widget _buildPopularItemStar() {
    return SizedBox();
  }

  Widget _buildPopularItemComment() {
    return SizedBox();
  }

  Widget _buildPopularItemInfo() {
    return SizedBox();
  }
}
