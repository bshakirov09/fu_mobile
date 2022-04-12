// Created by Muhammed Tolkinov on 25-December-2021

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter_svg/svg.dart';

class PodcastButtonComponent extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const PodcastButtonComponent({
    Key? key,
    required this.onPressed,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: [

          Container(
            height: 60.h,
            width: 324.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: AppColors.tertiaryVariantColor,
            ),
          ),

          Container(
            height: 60.h,
            width: 311.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: AppColors.tertiaryColor,
            ),
          ),

          Container(
            height: 60.h,
            width: 306.w,
            padding: EdgeInsets.only(
              left: 16.w,
              right: 18.w
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: AppColors.grey,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: AdaptiveTheme.of(context).theme.textTheme.bodyText2,
                ),

                SvgPicture.asset(
                  AppIcons.expandCircleDown,
                  color: AppColors.primaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
