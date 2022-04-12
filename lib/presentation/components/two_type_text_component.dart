import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class TwoTypeText extends StatelessWidget {
  final String text1;
  final String text2;
  const TwoTypeText({required this.text1, required this.text2, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text1.tr(),
        style: AdaptiveTheme.of(context).theme.textTheme.headline1,
        children: <TextSpan>[
          TextSpan(
            text: text2.tr(),
            style: AdaptiveTheme.of(context).theme.textTheme.headline2,
          ),
        ],
      ),
    );
  }
}
