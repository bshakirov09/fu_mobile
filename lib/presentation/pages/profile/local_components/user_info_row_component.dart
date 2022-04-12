// Created by Muhammed Tolkinov on 17-December-2021

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class UserInfoRowComponent extends StatelessWidget {
  final String leftIcon;
  final String text;
  final String rowInfo;
  final VoidCallback onPressed;

  const UserInfoRowComponent({
    Key? key,
    required this.leftIcon,
    this.rowInfo = '',
    required this.text,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: EdgeInsets.only(bottom: 14.h),
        margin: EdgeInsets.only(bottom: 14.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1.h,
              color: AppColors.primaryColor.withOpacity(0.05)),
            )
          ),
        child: Row(
          children: [
            SvgPicture.asset(
              leftIcon,
              height: 24.h,
              width: 24.w,
            ),

            SizedBox(width: 12.w),

            Text(
              text,
              style: AdaptiveTheme.of(context).theme.textTheme.bodyText1
            ),

            const Spacer(),

            Text(
              rowInfo,
              style: AdaptiveTheme.of(context).theme.textTheme.bodyText2!.copyWith(
                color: AppColors.blue
              ),
            ),

            SizedBox(width: 12.w),

            SvgPicture.asset(
              AppIcons.keyboardArrowRight,
              width: 24.h,
              height: 24.h,
            )
          ],
      ),
      ),
    );
  }
}
