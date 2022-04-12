// Created by Muhammed Tolkinov on 14-December-2021

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class BottomBarItemComponent extends StatelessWidget {
  final String icon;
  final String itemText;
  final bool isSelected;
  final int index;
  final VoidCallback onPressed;

  const BottomBarItemComponent({
    Key? key,
    required this.isSelected,
    required this.itemText,
    required this.icon,
    required this.index,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 60.w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(icon),
            SizedBox(height: 10.h),
            if (isSelected)
              Container(
                width: 6,
                height: 6,
                margin: const EdgeInsets.symmetric(vertical: 3),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.secondaryColor),
              )
            else
              Text(
                itemText,
                style: AdaptiveTheme.of(context)
                    .theme
                    .textTheme
                    .subtitle1!
                    .copyWith(color: AppColors.primaryColor.withOpacity(0.45)),
              )
          ],
        ),
      ),
    );
  }
}
