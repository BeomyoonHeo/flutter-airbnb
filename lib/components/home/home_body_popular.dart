import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildPopularTitle(),
        _buildPopularList(),
      ],
    );
  }

  Widget _buildPopularTitle() {
    return SizedBox();
  }

  Widget _buildPopularList() {
    //나중에 ROW로 변경해보기
    return Container(
      //나중에 빼기
      height: 100,
      color: Colors.red,
      child: Wrap(
        children: [
          HomeBodyPopularItem(id: 0),
          SizedBox(
            width: 7.5,
          ), // 여백 spacer 사용해도 됨
          HomeBodyPopularItem(id: 1),
          SizedBox(
            width: 7.5,
          ),
          HomeBodyPopularItem(id: 2),
        ],
      ),
    );
  }
}
