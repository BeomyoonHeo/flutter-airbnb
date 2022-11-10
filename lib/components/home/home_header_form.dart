import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        //원하는 위치에 배치 하기위해서 Align을 사용, 재사용 할 일이 없어서 내부에 선언
        alignment: screenWidth < 520
            ? Alignment(-0.6, 0)
            : Alignment(-0.6, 0), // -1 ~ 1 까지 있음
        child: Container(
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
              // form 먼저 선언 후 alt + enter로 container로 감싸준다.
              child: Padding(
            padding: const EdgeInsets.all(gap_l),
            child: Column(
              children: [
                _buildFormTitle(),
                _buildFormField(),
                _buildFormSubmit(),
              ],
            ),
          )),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text(
          "모두의 숙소에서 숙소를 검색하세요",
          style: h4(),
        ),
        SizedBox(height: gap_xs),
        Text(
          "혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 '공간전체' 숙소까지, 모두의 숙소에 다 있습니다.",
          style: body1(),
        ),
        SizedBox(height: gap_m)
      ],
    );
  }

  Widget _buildFormField() {
    return Column(
      children: [
        CommonFormField(prefixText: "위치", hintText: "근처 추천 장소"),
        SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
                child: CommonFormField(prefixText: "체크인", hintText: "날짜 입력")),
            SizedBox(width: 3),
            Expanded(
                //Row에 width가 필요하기 때문에 Expanded사용
                child: CommonFormField(prefixText: "체크 아웃", hintText: "날짜 입력")),
          ],
        ),
        SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(child: CommonFormField(prefixText: "성인", hintText: "2")),
            SizedBox(width: 3),
            Expanded(
                //Row에 width가 필요하기 때문에 Expanded사용
                child: CommonFormField(prefixText: "어린이", hintText: "0")),
          ],
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  //TextButton, OutlineButton, ElevatedButton, InkWell + Container
  Widget _buildFormSubmit() {
    return SizedBox(
      // 사이즈 주고 싶으면 SizedBox 로 감싸기
      width: double.infinity,
      height: 50,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: kAccentColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          onPressed: () => {},
          child: Text(
            "검색",
            style: subtitle1(mColor: Colors.white),
          )),
    );
  }
}
