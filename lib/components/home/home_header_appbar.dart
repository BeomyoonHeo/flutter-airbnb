import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

import '../common/logo.dart'; //경로 절댓값으로 잡아주기

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  Widget _buildAppBarLogo() {
    return Row(
      children: [
        Logo(), // Refactor Extract Flutter Widget
        SizedBox(
          width: gap_s,
        ),
        Text(
          "RoomOfAll",
          style: h5(mColor: Colors.white),
        )
      ],
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        Text("회원가입", style: subtitle1(mColor: Colors.white)),
        SizedBox(
          width: gap_m,
        ),
        Text("로그인", style: subtitle1(mColor: Colors.white)),
      ],
    );
  }
}
