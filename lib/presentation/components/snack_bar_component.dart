
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/text_styles.dart';


class SnackBarComponent {

  static SnackBar errorSnackBar({required String message}) {
    return SnackBar(
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      backgroundColor: AppColors.red,
      margin: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 8.h),
      content: Text(
        message,
        style: AppTextStyles.regular.copyWith(
          fontSize: 13.sp,
          color: Colors.white,
        ),
      ),
    );
  }

  static SnackBar successSnackBar({required String message}) {
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.green,
      margin: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 8.h),
      content: Row(
        children: [
          const Icon(
            Icons.done,
            color: Colors.white,
          ),

          SizedBox(width: 10.w),

          Text(
            message,
            style: AppTextStyles.regular.copyWith(
              fontSize: 13.sp,
              color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}
