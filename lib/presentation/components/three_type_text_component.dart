import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ThreeTypeTextComponent extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final TextStyle textStyle1;
  final TextStyle textStyle2;
  final TextStyle textStyle3;
  const ThreeTypeTextComponent({
    required this.text1,
    required this.text2,
    this.text3 = '',
    required this.textStyle1,
    required this.textStyle2,
    required this.textStyle3,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text1.tr(),
        style: textStyle1,
        children: <TextSpan>[
          TextSpan(
            text: text2.tr(),
            style: textStyle2,
          ),
          TextSpan(
            text: text3.tr(),
            style: textStyle3,
          ),
        ],
      ),
    );
  }
}
