// Created by Muhammed Tolkinov on 12-December-2021

import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorComponent extends StatelessWidget {
  final String errorMessage;

  const ErrorComponent({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 1.sh,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            errorMessage,
            style: AdaptiveTheme.of(context).theme.textTheme.headline4,
          )

        ],
      ),
    );
  }
}
