
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/application/workout/bloc/workout_bloc.dart';
import 'package:fitness_uncensored/domain/workout/pages.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/cached_image_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';

class WorkoutSplitsPage extends StatefulWidget {
  final int id;
  final String title;
  final String description;

  const WorkoutSplitsPage({
    Key? key,
    required this.id,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  State<WorkoutSplitsPage> createState() => _WorkoutSplitsPageState();
}

class _WorkoutSplitsPageState extends State<WorkoutSplitsPage> {

  @override
  void initState() {
    context.read<WorkoutBloc>().add(WorkoutEvent.getWorkoutSplits(
      id: widget.id,
      title: widget.title,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: AppBarComponent(
          iconPath: AppIcons.accountCircleFilled,
            onRightButtonPressed: () => Navigator.push(
              context,
              AppRoutes.profile()
            ),
        ),
      ),
      body: BlocBuilder<WorkoutBloc, WorkoutState>(
        buildWhen: (context, state) => state.currentPage == WorkoutPages.workoutSplits,
        builder: (context, state) {
          if (state.isLoading) {
            return const AppLoadingComponent();
          }
          else if (state.hasError) {
            return ErrorComponent(errorMessage: state.error);
          }
          else {
            return Padding(
              padding: EdgeInsets.only(top: 22.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: AdaptiveTheme.of(context).theme.textTheme.headline1,
                        ),
                        RichText(
                          text: TextSpan(
                            text: widget.description,
                            style: AdaptiveTheme.of(context).theme.textTheme.headline2,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16.h),

                  Expanded(
                    child: ListView.builder(
                      itemCount: state.workoutSplits.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              AppRoutes.workoutSplitsRoadmap(
                                id: state.workoutSplits[index].id,
                                title: state.workoutSplits[index].title
                              ),
                            );
                          },
                          child: containerSplit(
                            title: state.workoutSplits[index].title,
                            desc: state.workoutSplits[index].description,
                            image: state.workoutSplits[index].image,
                          ),
                        );
                      }
                    ),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget containerSplit({
    required String title,
    required String desc,
    required String image,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 16.h),
      child: Container(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16.h, left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: AdaptiveTheme.of(context).theme.textTheme.headline3,
                        ),
                        SizedBox(height: 12.h),
                        SizedBox(
                          width: 100.w,
                          child: Text(
                            desc,
                            style: AdaptiveTheme.of(context).theme.textTheme.headline4,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: CachedImageComponent(
                    imageUrl: image,
                    borderRadius: 20.r,
                    height: 155.h,
                    width: MediaQuery.of(context).size.width,
                  ))
                ],
              ),
            ],
          ),
        ),
        height: 155.h,
        decoration: BoxDecoration(
          gradient: AppColors.linear2,
          border: Border.all(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    );
  }
}
