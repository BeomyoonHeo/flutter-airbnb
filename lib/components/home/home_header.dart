import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_header_appbar.dart';
import 'package:flutter_airbnb/components/home/home_header_form.dart';
import 'package:flutter_airbnb/size.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildContainer();
  }

  Container buildContainer() {
    return Container(
      height: header_height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.jpeg"), //stack으로 이미지를 넣을 수 있다.
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: const [
          HomeHeaderAppBar(),
          HomeHeaderForm(),
        ],
      ),
    );
  }
}
