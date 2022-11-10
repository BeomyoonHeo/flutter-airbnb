import 'package:flutter/material.dart';
import 'package:flutter_airbnb/styles.dart';

class CommonFormField extends StatelessWidget {
  final prefixText;
  final hintText;

  CommonFormField({Key? key, required this.prefixText, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical:
              TextAlignVertical.bottom, // contentPadding이 생겨야지 사용 가능하다.
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
            hintText: "${hintText}", // NPE 대응하기위함 - null 발생시 공백으로 치환한다.
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black, width: 2),
            ),
          ),
        ),
        Positioned(
            top: 8,
            left: 20,
            child: Text(
              "${prefixText}", //
              style: overLine(),
            ))
      ],
    );
  }
}
