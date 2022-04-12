import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/application/workout/bloc/workout_bloc.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Quad extends StatelessWidget {
  final bool colorSelect;
  final String? title;
  final String? subtitle;
  final double? userData;
  final int id;
  const Quad({
    Key? key,
    this.colorSelect = false,
    this.title,
    this.subtitle,
    this.userData,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String sendWeight = '';
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 160.w,
                child: Text(
                  title.toString(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AdaptiveTheme.of(context)
                      .theme
                      .textTheme
                      .headline4!
                      .copyWith(fontSize: 12.sp),
                ),
              ),
              SizedBox(height: 6.h),
              SizedBox(
                width: 120.w,
                child: Text(
                  subtitle.toString(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AdaptiveTheme.of(context)
                      .theme
                      .textTheme
                      .subtitle1!
                      .copyWith(
                        color: AppColors.secondaryColor,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 84.w,
            height: 26.h,
            child: Center(
              child: TextFormField(
                textInputAction: TextInputAction.send,
                onChanged: (value) {
                  sendWeight = value;
                },
                onFieldSubmitted: (value) {
                  context.read<WorkoutBloc>().add(
                      WorkoutEvent.addWeightQuad(id: id, data: sendWeight));
                },
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0),
                  hintText: userData == 0.0 ? "Weight (LBs)".tr() : "$userData",
                  hintStyle: AdaptiveTheme.of(context)
                      .theme
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 9.sp),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: const BorderSide(color: AppColors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(
                      color: AppColors.secondaryColor,
                      width: 2.67.w,
                    ),
                  ),
                  // suffixIcon: SvgPicture.asset(
                  //   AppIcons.unfoldMore,
                  //   height: 24.h,
                  // ),
                  // suffixIconConstraints: BoxConstraints(
                  //   maxHeight: 40.h,
                  //   maxWidth: 40.w,
                  // ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
