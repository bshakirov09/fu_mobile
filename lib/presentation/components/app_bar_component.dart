import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppBarComponent extends StatelessWidget {
  final String text;
  final String iconPath;
  final String rightButtonText;
  final VoidCallback? onBackButtonPressed;
  final VoidCallback? onRightButtonPressed;
  final Color? buttonColors;
  final String preIconText;
  final bool main;

  const AppBarComponent({
    Key? key,
    this.text = '',
    this.iconPath = '',
    this.rightButtonText = '',
    this.onBackButtonPressed,
    this.onRightButtonPressed,
    this.buttonColors,
    this.preIconText = '',
    this.main = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 16.w,
        right: 16.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          main
              ? SizedBox(
                  height: 56.h,
                )
              : BackButton(
                  onPressed: onBackButtonPressed,
                  color: buttonColors,
                ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: SizedBox(
                width: 230.w,
                child: Text(
                  text,
                  style: AdaptiveTheme.of(context).theme.textTheme.headline3,
                  maxLines: 1,
                ),
              ),
            ),
          ),
          if (iconPath.isNotEmpty || rightButtonText.isNotEmpty)
            GestureDetector(
              onTap: onRightButtonPressed,
              child: iconPath.isNotEmpty
                  ? preIconText.isNotEmpty
                      ? Row(
                          children: [
                            Text(
                              preIconText,
                              style: AdaptiveTheme.of(context)
                                  .theme
                                  .textTheme
                                  .headline4,
                            ),
                            SizedBox(width: 16.w),
                            SvgPicture.asset(iconPath, color: buttonColors)
                          ],
                        )
                      : SvgPicture.asset(iconPath, color: buttonColors)
                  : Text(
                      rightButtonText,
                      style: AdaptiveTheme.of(context)
                          .theme
                          .textTheme
                          .caption!
                          .copyWith(
                              color: AppColors.linksColor.withOpacity(0.7)),
                    ),
            ),
          if (iconPath.isEmpty && rightButtonText.isEmpty)
            SizedBox(width: 48.h),
        ],
      ),
    );
  }
}
