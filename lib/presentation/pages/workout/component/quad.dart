import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_localization/easy_localization.dart';

class Quad extends StatelessWidget {
  final bool colorSelect;
  final String? title;
  final String? subtitle;
  final double? userData;
  const Quad({
    Key? key,
    this.colorSelect = false,
    this.title,
    this.subtitle,
    this.userData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: colorSelect ? AppColors.tertiaryVariantColor : AppColors.grey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title.toString(),
                style: AdaptiveTheme.of(context).theme.textTheme.headline4,
              ),
              SvgPicture.asset(AppIcons.playArrowFilled)
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subtitle.toString(),
                style: AdaptiveTheme.of(context).theme.textTheme.bodyText1,
              ),
              SizedBox(
                width: 126.w,
                height: 40.h,
                child: Center(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      hintText: userData == 0.0 ? "weight".tr() : "$userData",
                      hintStyle:
                          AdaptiveTheme.of(context).theme.textTheme.subtitle2,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: const BorderSide(color: AppColors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: const BorderSide(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      suffixIcon: SvgPicture.asset(
                        AppIcons.unfoldMore,
                        height: 24.h,
                      ),
                      suffixIconConstraints: BoxConstraints(
                        maxHeight: 40.h,
                        maxWidth: 40.w,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
