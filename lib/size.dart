import 'package:flutter/material.dart';

const double gal_xl = 40; // 마진과 패딩 둘다 사용하기 위해 갭으로 설정
const double gap_l = 30;
const double gap_m = 20;
const double gap_s = 10;
const double gap_xs = 5;

// 헤더 높이
const double header_height = 620;

//MediaQuery - 나의 화면 사이즈를 알게 해준다.
// BuildContext는 해당 class에 대한 모든 구조를 알고 있다. - 트리형태
// BuildContext를 사용하여 해당 context의 모든 정보를 알 수 있다.
double getBodyWidth(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.7;
  //MediaQuery는 해당 화면의 사이즈를 알 수 있는 클래스 이다.
}
