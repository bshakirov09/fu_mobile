// Created by Muhammed Tolkinov on 14-December-2021

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class CoachInfoComponent extends StatelessWidget {
  final String coachName;
  final String coachImage;
  final bool isSelected;

  const CoachInfoComponent({
    Key? key,
    required this.coachName,
    required this.coachImage,
    required this.isSelected
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 155.w,
      height: 53.h,
      duration: const Duration(milliseconds: 350),
      padding: EdgeInsets.all(1.h),
      decoration: BoxDecoration(
        gradient: isSelected ? AppColors.linear : null,
        borderRadius: BorderRadius.circular(20.r)
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isSelected ? AppColors.white : AppColors.grey,
          borderRadius: BorderRadius.circular(20.r)
        ),
        child: Row(
          children: [

            SizedBox(width: 12.w),

            ClipRRect(
              borderRadius: BorderRadius.circular(100.r),
              child: Image.asset(
                coachImage,
                height: 43.h,
                width: 43.h,
              ),
            ),
            // CachedImageComponent(
            //   height: 43.h,
            //   width: 43.h,
            //   imageUrl: coachImage,
            //   borderRadius: 100.r
            // ),

            SizedBox(width: 10.w),

            Text(
              coachName,
              style: AdaptiveTheme.of(context).theme.textTheme.bodyText2,
            )

          ],
        ),
      ),
    );
  }
}
