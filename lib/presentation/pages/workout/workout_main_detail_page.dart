import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/application/workout/bloc/workout_bloc.dart';
import 'package:fitness_uncensored/domain/workout/pages.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/cached_image_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class WorkoutMainDetailPage extends StatefulWidget {
  final String title;
  final int id;

  const WorkoutMainDetailPage({
    required this.id,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  _WorkoutMainDetailPageState createState() => _WorkoutMainDetailPageState();
}

class _WorkoutMainDetailPageState extends State<WorkoutMainDetailPage> {
  @override
  void initState() {
    context.read<WorkoutBloc>().add(
          WorkoutEvent.getWorkoutMainDetail(id: widget.id),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutBloc, WorkoutState>(
        buildWhen: (context, state) =>
            state.currentPage == WorkoutPages.workoutMainDetail,
        builder: (context, state) {
          if (state.isLoading) {
            return const Material(
              child: Center(
                child: AppLoadingComponent(),
              ),
            );
          } else if (state.hasError) {
            return ErrorComponent(errorMessage: state.error);
          } else {
            return Scaffold(
              appBar: AppBar(
                elevation: 4,
                shadowColor: AppColors.white.withOpacity(0.4),
                backgroundColor: AppColors.white,
                centerTitle: true,
                title: Text(
                  widget.title,
                  style: AdaptiveTheme.of(context)
                      .theme
                      .textTheme
                      .headline4!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                foregroundColor: AppColors.primaryColor,
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    CachedImageComponent(
                      height: 294.h,
                      width: double.infinity,
                      imageUrl: state.workoutMainDetail.image,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 30.w, top: 24.h, right: 30.w, bottom: 24.h),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${state.workoutMainDetail.weekDuration} weeks",
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .subtitle1,
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                "Programm length",
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: AppColors.secondaryColor),
                              ),
                            ],
                          ),
                          SizedBox(width: 44.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${state.workoutMainDetail.minDuration} minutes",
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .subtitle1,
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                "Workout duration",
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: AppColors.secondaryColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 24.h,
                        bottom: 12.h,
                      ),
                      child: Container(
                        // height: 158.h,
                        width: double.infinity,
                        color: AppColors.secondaryVariantColor.withOpacity(0.3),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 16.h, left: 30.w, right: 20.w, bottom: 30.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${widget.title} - ${state.workoutMainDetail.shortDescription}",
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: AppColors.secondaryColor,
                                        fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Text(
                                state.workoutMainDetail.description,
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .subtitle1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.w, bottom: 28.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Equipment",
                            style: AdaptiveTheme.of(context)
                                .theme
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                    color: AppColors.secondaryColor,
                                    fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 8.h),
                          GridView.builder(
                            physics: const BouncingScrollPhysics(),
                            semanticChildCount: 6,
                            addSemanticIndexes: true,
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 1,
                              crossAxisSpacing: 1,
                              crossAxisCount: 2,
                              childAspectRatio: 8,
                            ),
                            itemCount: state.workoutMainDetail.equipment.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Text(
                                state.workoutMainDetail.equipment[index],
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .subtitle1,
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              floatingActionButton: SizedBox(
                width: 156.w,
                child: FloatingActionButton(
                  elevation: 0.0,
                  backgroundColor: AppColors.secondaryColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        AppRoutes.workoutSplitsRoadmap(
                            id: state.workoutMainDetail.id,
                            title: state.workoutMainDetail.title));
                  },
                  child: Text("start_program".tr()),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0.r),
                    ),
                  ),
                ),
              ),
            );
          }
        });
  }
}
