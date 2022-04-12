import 'package:fitness_uncensored/presentation/pages/workout/component/container_main_cubic_component.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/application/workout/bloc/workout_bloc.dart';
import 'package:fitness_uncensored/domain/workout/pages.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter_svg/svg.dart';

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
        appBar: AppBar(
          title: Text(
            "all_programms".tr(),
            style: AdaptiveTheme.of(context)
                .theme
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          backgroundColor: AppColors.white,
          elevation: 4,
          shadowColor: AppColors.white.withOpacity(0.4),
          actions: [
            InkWell(
              onTap: widget.onProfilePressed,
              child: Padding(
                padding: EdgeInsets.only(right: 32.w),
                child: SvgPicture.asset(
                  AppIcons.accountCircleFilled,
                ),
              ),
            ),
          ],
        ),
        //  PreferredSize(
        //   preferredSize: Size.fromHeight(56.h),
        //   child: AppBarComponent(
        //     main: true,
        //     text: "all_programms".tr(),
        //     iconPath: AppIcons.accountCircleFilled,
        //     onRightButtonPressed: widget.onProfilePressed,
        //   ),
        // ),
        body: BlocBuilder<WorkoutBloc, WorkoutState>(
          buildWhen: (context, state) => state.currentPage == WorkoutPages.main,
          builder: (context, state) {
            if (state.isLoading) {
              return const AppLoadingComponent();
            } else if (state.hasError) {
              return ErrorComponent(errorMessage: state.error);
            } else {
              return ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 30.w, bottom: 24.h, top: 24.h),
                        child: Text(
                          state.workoutMainList[index].title,
                          style: AdaptiveTheme.of(context)
                              .theme
                              .textTheme
                              .headline3!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 30.w,
                        ),
                        child: SizedBox(
                          height: 200.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index1) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    AppRoutes.workoutMainDetailPage(
                                        id: state.workoutMainList[index]
                                            .workoutTypes[index1].id,
                                        title:
                                            state.workoutMainList[index].title),
                                  );
                                },
                                child: ContainerMainCubeComponent(
                                  image: state.workoutMainList[index]
                                      .workoutTypes[index1].image,
                                  title: state.workoutMainList[index]
                                      .workoutTypes[index1].title,
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 14.w);
                            },
                            itemCount: state
                                .workoutMainList[index].workoutTypes.length,
                          ),
                        ),
                      ),
                    ],
                  );
                },
                itemCount: state.workoutMainList.length,
              );
            }
          },
        ),
      ),
    );
  }
}
