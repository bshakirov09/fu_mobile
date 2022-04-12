import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/application/workout/bloc/workout_bloc.dart';
import 'package:fitness_uncensored/domain/workout/pages.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/pages/workout/component/slider.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';

class WorkoutMainPage extends StatefulWidget {
  final VoidCallback onProfilePressed;

  const WorkoutMainPage({
    Key? key,
    required this.onProfilePressed,
  }) : super(key: key);

  @override
  State<WorkoutMainPage> createState() => _WorkoutMainPageState();
}

class _WorkoutMainPageState extends State<WorkoutMainPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.h),
          child: AppBarComponent(
            text: "Hi! ${UserRepositoryModel.fullName}",
            iconPath: AppIcons.accountCircleFilled,
            onRightButtonPressed: widget.onProfilePressed,
          ),
        ),
        body: BlocBuilder<WorkoutBloc, WorkoutState>(
          buildWhen: (context, state) => state.currentPage == WorkoutPages.main,
          builder: (context, state) {
            if (state.isLoading) {
              return const AppLoadingComponent();
            } else if (state.hasError) {
              return ErrorComponent(errorMessage: state.error);
            } else {
              return Padding(
                padding: EdgeInsets.only(top: 22.h),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'choose'.tr(),
                              style: AdaptiveTheme.of(context)
                                  .theme
                                  .textTheme
                                  .headline1,
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'a_'.tr(),
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline1,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'workout'.tr(),
                                    style: AdaptiveTheme.of(context)
                                        .theme
                                        .textTheme
                                        .headline2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.h),
                      SliderComponent(
                        workoutListModel: state.workoutMainList,
                      ),
                      SizedBox(height: 16.h),
                      Padding(
                        padding: EdgeInsets.only(left: 30.w),
                        child: Text(
                          "in_progress".tr(),
                          style: AdaptiveTheme.of(context)
                              .theme
                              .textTheme
                              .headline3,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.w, vertical: 16.h),
                        child: Container(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 16.h, left: 24),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "6 Day split",
                                        style: AdaptiveTheme.of(context)
                                            .theme
                                            .textTheme
                                            .headline3,
                                      ),
                                      SizedBox(height: 12.h),
                                      Text(
                                        "Day 3",
                                        style: AdaptiveTheme.of(context)
                                            .theme
                                            .textTheme
                                            .headline4,
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 24.w),
                                  child: Container(
                                    height: 36.h,
                                    width: 36.h,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius:
                                            BorderRadius.circular(18.r),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "50%",
                                        style: TextStyle(
                                          color: AppColors.primaryColor
                                              .withOpacity(0.5),
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18.r),
                                      border: Border.all(
                                        width: 4,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          height: 104.h,
                          decoration: BoxDecoration(
                            gradient: AppColors.linear2,
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
