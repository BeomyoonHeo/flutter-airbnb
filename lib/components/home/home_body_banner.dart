import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getBodyWidth(context),
      child: Stack(
        // 나중에 패딩주기
        children: [_buildBannerImage(), _buildBannerCaption()],
      ),
    );
  }

  Widget _buildBannerImage() {
    return Container(
      height: 100,
      color: Colors.blue,
    );
  }

  Widget _buildBannerCaption() {
    return Container(
      height: 100,
      color: Colors.yellow,
    );
  }
}
