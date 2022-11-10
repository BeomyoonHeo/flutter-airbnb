import 'package:flutter/material.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //나중에 완성하기
    return Align(
      //원하는 위치에 배치 하기위해서 Align을 사용, 재사용 할 일이 없어서 내부에 선언
      alignment: Alignment(-0.6, 0), // -1 ~ 1 까지 있음
      child: Container(
        width: 420,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Form(
            // form 먼저 선언 후 alt + enter로 container로 감싸준다.
            child: Column(
          children: [
            _buildFormTitle(),
            _buildFormField(),
            _buildFormSubmit(),
          ],
        )),
      ),
    );
  }

  Widget _buildFormTitle() {
    return SizedBox();
  }

  Widget _buildFormField() {
    return SizedBox();
  }

  Widget _buildFormSubmit() {
    return SizedBox();
  }
}
