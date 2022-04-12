import 'package:fitness_uncensored/application/workout/bloc/workout_bloc.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/pages/workout/component/quad.dart';
import 'package:fitness_uncensored/presentation/pages/workout/component/video_items.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';

class WorkoutDayDetailPage extends StatefulWidget {
  final int id;
  final String title;
  final int id1;
  final String title1;

  const WorkoutDayDetailPage({
    Key? key,
    required this.id,
    required this.title,
    required this.id1,
    required this.title1,
  }) : super(key: key);

  @override
  State<WorkoutDayDetailPage> createState() => _WorkoutDayDetailPageState();
}

class _WorkoutDayDetailPageState extends State<WorkoutDayDetailPage> {
  @override
  void initState() {
    // donwloadFileUrl =
    //     "https://fitness-project-storage.s3.amazonaws.com/fitness/workout/58a177be-738c-11ec-a4f9-02420a000289/original.mp4";
    context.read<WorkoutBloc>().add(WorkoutEvent.getWorkoutDayDetail(
          id: widget.id,
        ));

    super.initState();
  }

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        FocusManager.instance.primaryFocus?.unfocus(),
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 4,
          shadowColor: AppColors.white.withOpacity(0.4),
          title: Text(
            widget.title,
          ),
          centerTitle: true,
          foregroundColor: AppColors.primaryColor,
        ),
        body: BlocConsumer<WorkoutBloc, WorkoutState>(
          // listenWhen: (previous, current) {
          //   return previous.workoutQuadModel.video !=
          //       current.workoutQuadModel.video;
          // },
          listener: (context, state) {
            if (state.workoutQuadModel.video.isNotEmpty) {
              showDialog(
                  context: context,
                  builder: (_) {
                    return Dialog(
                      backgroundColor: Colors.transparent,
                      insetPadding: EdgeInsets.only(
                        bottom: 0,
                        left: 10.w,
                        right: 10.w,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            // height: 360.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.r),
                                    bottomRight: Radius.circular(20.r))),
                            child: QuadDetailVideo(
                              fileName: state.workoutQuadModel.video,
                              id: state.workoutQuadModel.id,
                              desc: state.workoutQuadModel.description,
                            ),
                          ),
                          SizedBox(height: 24.h),
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: SvgPicture.asset(
                                AppIcons.close,
                                height: 36.h,
                                width: 36.w,
                                color: AppColors.white,
                              ))
                        ],
                      ),
                    );
                  });
            }
            if (state.isCompleted) {
              showDialog(
                  context: context,
                  builder: (_) {
                    return Dialog(
                      backgroundColor: Colors.transparent,
                      insetPadding: EdgeInsets.only(
                        bottom: 0,
                        left: 30.w,
                        right: 30.w,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            // height: 360.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Lottie.asset(
                                    "assets/animations/frame.json",
                                    height: 130.h,
                                  ),
                                ),
                                SizedBox(height: 14.h),
                                Text(
                                  "congratulations".tr(),
                                  style: AdaptiveTheme.of(context)
                                      .theme
                                      .textTheme
                                      .headline3!
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 16.h),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 30.w,
                                    right: 24.w,
                                    bottom: 24.h,
                                  ),
                                  child: Text(
                                    "This page is used to inform visitors regarding our policies with the collection, use, and disclosure.",
                                    textAlign: TextAlign.center,
                                    style: AdaptiveTheme.of(context)
                                        .theme
                                        .textTheme
                                        .bodyText2,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context, true);
                                    // Navigator.popUntil(
                                    //   context,
                                    //   AppRoutes.workoutSplitsRoadmap(
                                    //       id: widget.id1, title: widget.title1),
                                    // );
                                  },
                                  child: Container(
                                    width: 190.w,
                                    height: 60.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        border: Border.all(
                                            color: AppColors.primaryColor,
                                            width: 1.h)),
                                    child: Center(
                                      child: Text(
                                        "Back to workouts",
                                        style: AdaptiveTheme.of(context)
                                            .theme
                                            .textTheme
                                            .button!
                                            .copyWith(
                                                color: AppColors.primaryColor),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 32.h),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            }
          },
          // buildWhen: (context, state) =>
          //     state.currentPage == WorkoutPages.workoutDayDetail,
          builder: (context, state) {
            if (state.isLoading) {
              return const AppLoadingComponent();
            } else if (state.hasError) {
              return ErrorComponent(errorMessage: state.error);
            } else {
              return Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 240.h,
                        width: double.infinity,
                        color: const Color(0xFFFDD1F5),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 24.h, left: 30.w, right: 24.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Week ${state.workoutDayDetailModel?.week ?? 0}, Day ${state.workoutDayDetailModel?.day ?? 0}",
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline1!
                                    .copyWith(fontSize: 16.sp),
                              ),
                              Text(
                                "${state.workoutDayDetailModel?.minDuration ?? ""} MIN",
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                      fontSize: 14.sp,
                                      color: AppColors.primaryColor
                                          .withOpacity(0.4),
                                    ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                state.workoutDayDetailModel?.description ?? "",
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .subtitle1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      // CachedImageComponent(
                      //   height: 190.h,
                      //   width: MediaQuery.of(context).size.width,
                      //   imageUrl: state.workoutDayDetailModel?.image ??
                      //       "assets/images/default_image.jpg",
                      //   borderRadius: 16.r,
                      // ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 80.h, left: 16.w, right: 16.w),
                    child: Container(
                      height: 470.h,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(16.r),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.08),
                            // spreadRadius: 5,
                            blurRadius: 4,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 34.w, right: 30.w, top: 20.h, bottom: 70.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Workout"
                                  // "Week ${state.workoutDayDetailModel?.week} day ${state.workoutDayDetailModel?.day}"
                                  .tr(),
                              style: AdaptiveTheme.of(context)
                                  .theme
                                  .textTheme
                                  .headline4!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 8.h),
                            Divider(
                              thickness: 1.h,
                              height: 1.h,
                              color: AppColors.primaryColor.withOpacity(0.05),
                            ),
                            SizedBox(height: 16.h),
                            Expanded(
                              child: ListView.separated(
                                itemCount:
                                    state.workoutDayDetailModel?.quads.length ??
                                        0,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      context.read<WorkoutBloc>().add(
                                          WorkoutEvent.getWorkoutQuad(
                                              id: state.workoutDayDetailModel
                                                      ?.quads[index].id ??
                                                  0));
                                    },
                                    child: Quad(
                                      id: state.workoutDayDetailModel
                                              ?.quads[index].id ??
                                          0,
                                      title: state.workoutDayDetailModel
                                              ?.quads[index].title ??
                                          "",
                                      subtitle: state.workoutDayDetailModel
                                          ?.quads[index].count,
                                      colorSelect: true,
                                      userData: 0,
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return Divider(
                                    thickness: 1.h,
                                    color: AppColors.primaryColor
                                        .withOpacity(0.05),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 40.h,
                    child: GestureDetector(
                      onTap: () {
                        context
                            .read<WorkoutBloc>()
                            .add(WorkoutEvent.completeWorkout(id: widget.id));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 30.w, right: 30.w, bottom: 16.h),
                        width: 206.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Center(
                          child: Text(
                            "complete_workout".tr(),
                            style: AdaptiveTheme.of(context)
                                .theme
                                .textTheme
                                .button!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

class QuadDetailVideo extends StatefulWidget {
  final String fileName;
  final int id;
  final String desc;
  const QuadDetailVideo({
    Key? key,
    required this.desc,
    required this.fileName,
    required this.id,
  }) : super(key: key);

  @override
  _QuadDetailVideoState createState() => _QuadDetailVideoState();
}

class _QuadDetailVideoState extends State<QuadDetailVideo> {
  VideoPlayerController? videoPlayerController;

  @override
  void initState() {
    initVideo();
    super.initState();
  }

  initVideo() async {
    var file = await DefaultCacheManager().getFileFromCache(widget.fileName);
    if (file != null) {
      videoPlayerController = VideoPlayerController.file(file.file);
    } else {
      DefaultCacheManager().downloadFile(widget.fileName);
      videoPlayerController = videoPlayerController =
          VideoPlayerController.network(widget.fileName);
    }
    setState(() {});
  }

  @override
  void dispose() {
    videoPlayerController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: videoPlayerController == null
          ? const AppLoadingComponent(
              showLoadingTextForIOS: false,
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 200.h,
                    child: VideoItems(
                        videoPlayerController: videoPlayerController!)),
                SizedBox(height: 16.h),
                Padding(
                  padding:
                      EdgeInsets.only(left: 16.w, right: 30.w, bottom: 30.h),
                  child: Text(
                    widget.desc,
                    style: AdaptiveTheme.of(context).theme.textTheme.bodyText2,
                  ),
                )
              ],
            ),
    );
  }
}
