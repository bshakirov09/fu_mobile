import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.h),
          child: AppBarComponent(
            text: "notifications".tr(),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              Text(
                "today".tr(),
                style: AdaptiveTheme.of(context).theme.textTheme.headline4,
              ),
              SizedBox(height: 16.h),
              rectangleContainer(
                color: AppColors.secondaryColor,
                text:
                    "You have survived your first workout at the gym. Congratulations!",
                textColor: AppColors.white,
              ),
              SizedBox(height: 16.h),
              Text(
                "this_week".tr(),
                style: AdaptiveTheme.of(context).theme.textTheme.headline4,
              ),
              SizedBox(height: 16.h),
              rectangleContainer(
                color: AppColors.grey,
                text:
                    "You haven't added a photo for 2 weeks, please add a photo to see the progress",
                textColor: AppColors.primaryColor,
                bottomCheckText: true,
                bottomText: "add_photo",
              ),
              SizedBox(height: 16.h),
              rectangleContainer(
                color: AppColors.grey,
                text:
                    "You haven't added a photo for 2 weeks, please add a photo to see the progress",
                textColor: AppColors.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget rectangleContainer({
    required Color color,
    required String text,
    required Color textColor,
    bool bottomCheckText = false,
    String? bottomText,
  }) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5.w,
              ),
            ),
            SizedBox(height: 4.h),
            bottomCheckText
                ? Align(
                    alignment: const Alignment(1, 0),
                    child: Text(
                      bottomText.toString().tr(),
                      style: TextStyle(
                        color: AppColors.blue,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
