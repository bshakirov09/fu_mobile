// Created by Muhammed Tolkinov on 14-December-2021

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class ProgressIndicatorContainerComponent extends StatelessWidget {
  final bool isSelected;

  const ProgressIndicatorContainerComponent({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 71.w,
      height: 4.h,
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.15),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 650),
        width: isSelected ? 71.w : 0,
        height: 4.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          gradient: isSelected ? AppColors.linear : null
        ),
      ),
    );
  }
}
