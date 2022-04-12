
import 'package:fitness_uncensored/application/workout/bloc/workout_bloc.dart';
import 'package:fitness_uncensored/domain/workout/pages.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/cached_image_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/pages/workout/component/quad.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';

class WorkoutDayDetailPage extends StatefulWidget {
  final int id;
  final String title;

  const WorkoutDayDetailPage({
    Key? key,
    required this.id,
    required this.title,
  }) : super(key: key);

  @override
  State<WorkoutDayDetailPage> createState() => _WorkoutDayDetailPageState();
}

class _WorkoutDayDetailPageState extends State<WorkoutDayDetailPage> {
  bool isDrag = false;

  @override
  void initState() {
    context.read<WorkoutBloc>().add(WorkoutEvent.getWorkoutDayDetail(
      id: widget.id,
      title: widget.title,
      day: 1,
      week: 1,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.h),
          child: AppBarComponent(
            iconPath: AppIcons.liveHelpFilled,
            text: widget.title,
            onRightButtonPressed: () {},
          ),
        ),
        body: BlocBuilder<WorkoutBloc, WorkoutState>(
          buildWhen: (context, state) =>
              state.currentPage == WorkoutPages.workoutDayDetail,
          builder: (context, state) {
            if (state.isLoading || state.workoutDayDetailModel == null) {
              return const AppLoadingComponent();
            }
            else if (state.hasError) {
              return ErrorComponent(errorMessage: state.error);
            }
            else {
              return Padding(
                padding: EdgeInsets.only(right: 30.w, left: 30.w, top: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CachedImageComponent(
                      height: 190.h,
                      width: MediaQuery.of(context).size.width,
                      imageUrl: state.workoutDayDetailModel?.image ?? "assets/images/default_image.jpg",
                      borderRadius: 16.r,
                    ),

                    SizedBox(height: 8.h),

                    Text(
                      "quads".tr(),
                      style: AdaptiveTheme.of(context).theme.textTheme.headline1,
                    ),

                    SizedBox(height: 16.h),

                    Text(
                      "Week ${state.workoutDayDetailModel?.week} day ${state.workoutDayDetailModel?.week}".tr(),
                      style: AdaptiveTheme.of(context).theme.textTheme.headline3,
                    ),
                    SizedBox(height: 16.h),

                    Divider(
                      thickness: 1.h,
                      height: 1.h,
                    ),

                    SizedBox(height: 16.h),

                    Expanded(
                      child: ListView.separated(
                        itemCount: state.workoutDayDetailModel!.quadList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onHorizontalDragEnd: (DragEndDetails details) {
                              setState(() {});
                            },
                            child: Quad(
                              title: state.workoutDayDetailModel!.quadList[index].title,
                              subtitle: state.workoutDayDetailModel!.quadList[index].count,
                              colorSelect: state.workoutDayDetailModel!.quadList[index].isCompleted,
                              userData: state.workoutDayDetailModel!.quadList[index].userData,
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 16.h);
                        },
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 16.h),
            width: double.infinity,
            height: 60.h,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(color: AppColors.primaryColor)
            ),
            child: Center(
              child: Text(
                "complete_workout".tr(),
                style: AdaptiveTheme.of(context).theme.textTheme.button!.copyWith(
                  color: AppColors.primaryColor
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
