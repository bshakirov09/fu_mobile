// Created by Muhammed Tolkinov on 15-January-2022

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/text_styles.dart';

class FAQItem extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onPressed;

  const FAQItem({
    Key? key,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.opaque,
      child: Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text(
                'What is FU?',
                style: AppTextStyles.regular.copyWith(
                  fontSize: 16.sp,
                  color: AppColors.primaryColor
                ),
              ),

              Icon(
                isSelected ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                color: AppColors.primaryColor,
              )
            ],
          ),

          SizedBox(height: 12.h),

          Visibility(
            visible: isSelected,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Text(
                'This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.',
                style: AppTextStyles.regular.copyWith(
                  fontSize: 14.sp,
                  color: AppColors.primaryColor.withOpacity(0.65)
                ),
              ),
            ),
          ),

          Divider(height: 1.h, color: AppColors.disabledColor),

          SizedBox(height: 12.h),
        ],
      ),
    );
  }
}
