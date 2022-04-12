import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness_uncensored/application/progress/bloc/progress_bloc.dart';
import 'package:fitness_uncensored/domain/progress/pages.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/components/icon_choosen_component.dart';
import 'package:fitness_uncensored/presentation/components/three_type_text_component.dart';
import 'package:fitness_uncensored/presentation/pages/progress/journal/note_single_page.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/utils/format_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProgressSingle extends StatefulWidget {
  final String id;
  const ProgressSingle({required this.id, Key? key}) : super(key: key);

  @override
  _ProgressSingleState createState() => _ProgressSingleState();
}

class _ProgressSingleState extends State<ProgressSingle> {
  final RateWorkoutRadio? _character = RateWorkoutRadio.lafayette;
  DateTime now = DateTime.now();

  @override
  void initState() {
    context
        .read<ProgressBloc>()
        .add(ProgressEvent.getProgressDetail(id: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgressBloc, ProgressState>(
      buildWhen: (context, state) =>
          state.currentPage == ProgressPages.detailProgress,
      builder: (context, state) {
        // print("WHAHH  ${state.getProgressDetailModel!.photo!.isEmpty}");
        if (state.isLoading || state.getProgressDetailModel == null) {
          return const Material(
            child: Center(
              child: AppLoadingComponent(),
            ),
          );
        } else if (state.hasError) {
          return Material(child: ErrorComponent(errorMessage: state.error));
        } else {
          return Scaffold(
              appBar: AppBar(
                foregroundColor: AppColors.primaryColor,
                centerTitle: true,
                title: Text(
                  FormatDate.mDYear(
                      date:
                          state.getProgressDetailModel!.createdDttm.toString()),
                  style: AdaptiveTheme.of(context)
                      .theme
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 16.sp),
                ),
                backgroundColor: AppColors.white,
                elevation: 1.5,
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 16.h),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 30.w, right: 30.w, bottom: 30.h),
                      child: Container(
                        height: 64.h,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryVariantColor,
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Weight: ",
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Text(
                                state.getProgressDetailModel!.weight,
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 24.sp,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                   state.getProgressDetailModel!.photo == null ? const SizedBox() : Padding(
                      padding: EdgeInsets.only(
                        left: 30.w,
                        right: 30.w,
                        bottom: 32.h,
                      ),
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: 1,
                        separatorBuilder: (context, index) {
                          return Column(
                            children: [
                              SizedBox(height: 12.h),
                              const Divider(
                                thickness: 1,
                              ),
                              SizedBox(height: 12.h),
                            ],
                          );
                        },
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Photo: ",
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline1,
                              ),
                              SizedBox(height: 16.h),
                              SizedBox(
                                // height: 210.h,
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 172.h,
                                          width: 97.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                              child: CachedNetworkImage(
                                                imageUrl: state
                                                    .getProgressDetailModel!
                                                    .photo!
                                                    .front!,
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                        SizedBox(height: 12.h),
                                        Text(
                                          "front".tr(),
                                          style: AdaptiveTheme.of(context)
                                              .theme
                                              .textTheme
                                              .bodyText2,
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 8.w),
                                    Column(
                                      children: [
                                        Container(
                                          height: 172.h,
                                          width: 97.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                              child: CachedNetworkImage(
                                                imageUrl: state
                                                    .getProgressDetailModel!
                                                    .photo!
                                                    .side!,
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                        SizedBox(height: 12.h),
                                        Text(
                                          "side".tr(),
                                          style: AdaptiveTheme.of(context)
                                              .theme
                                              .textTheme
                                              .bodyText2,
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 8.w),
                                    Column(
                                      children: [
                                        Container(
                                          height: 172.h,
                                          width: 97.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.r)),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                              child: CachedNetworkImage(
                                                imageUrl: state
                                                    .getProgressDetailModel!
                                                    .photo!
                                                    .back!,
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                        SizedBox(height: 12.h),
                                        Text(
                                          "back".tr(),
                                          style: AdaptiveTheme.of(context)
                                              .theme
                                              .textTheme
                                              .bodyText2,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                      state.getProgressDetailModel!.journal == null ? const SizedBox() :     Padding(
                      padding:
                          EdgeInsets.only(left: 30.w, right: 30.w, top: 16.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Journal note:".tr(),
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline1,
                              ),
                            ],
                          ),
                          SizedBox(height: 32.h),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ThreeTypeTextComponent(
                                text1: "rate_the".tr(),
                                text2: "intensity\n".tr(),
                                text3: "of_your_workouts".tr(),
                                textStyle1: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline3!,
                                textStyle2: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline2!
                                    .copyWith(fontSize: 22.sp),
                                textStyle3: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline3!,
                              ),
                              SizedBox(height: 26.h),
                              Row(
                                children: [
                                  Radio(
                                    activeColor: AppColors.primaryColor,
                                    value: RateWorkoutRadio.lafayette,
                                    groupValue: _character,
                                    onChanged: (value) => {},
                                  ),
                                  SizedBox(width: 12.w),
                                  Text(
                                    state.getProgressDetailModel!.journal!
                                        .intensityRate!
                                        .tr(),
                                    style: AdaptiveTheme.of(context)
                                        .theme
                                        .textTheme
                                        .bodyText2,
                                  ),
                                ],
                              ),
                              SizedBox(height: 24.h),
                              ThreeTypeTextComponent(
                                text1: "how_was_your".tr(),
                                text2: "mood".tr(),
                                text3: "?",
                                textStyle1: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline3!,
                                textStyle2: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline2!
                                    .copyWith(fontSize: 22.sp),
                                textStyle3: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline3!,
                              ),
                              SizedBox(height: 24.h),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    IconChoosenComponent.iconChosen(
                                      switchCase: state.getProgressDetailModel!
                                          .journal!.mood!,
                                    ),
                                  ),
                                  SizedBox(height: 14.h),
                                  Text(
                                    state.getProgressDetailModel!.journal!.mood!
                                        .tr(),
                                    style: AdaptiveTheme.of(context)
                                        .theme
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          fontSize: 14.sp,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 24.h),
                              ThreeTypeTextComponent(
                                text1: "how_was_your".tr(),
                                text2: "digestion".tr(),
                                text3: "?",
                                textStyle1: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline3!,
                                textStyle2: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline2!
                                    .copyWith(fontSize: 22.sp),
                                textStyle3: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline3!,
                              ),
                              SizedBox(height: 24.h),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      IconChoosenComponent.iconChosen(
                                          switchCase: state
                                              .getProgressDetailModel!
                                              .journal!
                                              .digestion!)),
                                  SizedBox(height: 14.h),
                                  Text(
                                    state.getProgressDetailModel!.journal!
                                        .digestion!
                                        .tr(),
                                    style: AdaptiveTheme.of(context)
                                        .theme
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          fontSize: 14.sp,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 24.h),
                              Divider(
                                height: 1.h,
                                color: AppColors.primaryColor,
                              ),
                              SizedBox(height: 24.h),
                              Text(
                                "period".tr(),
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline3,
                              ),
                              SizedBox(height: 24.h),
                              Row(
                                children: [
                                  Radio(
                                    activeColor: AppColors.primaryColor,
                                    value: RateWorkoutRadio.lafayette,
                                    groupValue: _character,
                                    onChanged: (value) => {},
                                  ),
                                  SizedBox(width: 12.w),
                                  Text(
                                    state.getProgressDetailModel!.journal!
                                            .period!
                                        ? "yes".tr()
                                        : "no".tr(),
                                    style: AdaptiveTheme.of(context)
                                        .theme
                                        .textTheme
                                        .bodyText2,
                                  ),
                                ],
                              ),
                              SizedBox(height: 26.h),
                              ThreeTypeTextComponent(
                                text1: "how_many_days_a_week_did_you_hit_water"
                                        .tr() +
                                    " ",
                                text2: "water".tr() + " ",
                                text3: "goal".tr(),
                                textStyle1: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline3!,
                                textStyle2: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline2!
                                    .copyWith(fontSize: 22.sp),
                                textStyle3: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline3!,
                              ),
                              SizedBox(height: 24.h),
                              Container(
                                height: 35.h,
                                width: 29.w,
                                child: Center(
                                  child: Text(
                                    state.getProgressDetailModel!.journal!
                                        .waterGoalDays
                                        .toString(),
                                    style: AdaptiveTheme.of(context)
                                        .theme
                                        .textTheme
                                        .headline4!
                                        .copyWith(fontSize: 14),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(4.r),
                                ),
                              ),
                              SizedBox(height: 24.h),
                              Text(
                                "how_many_days_a_week_did_you_hit_step".tr(),
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline3,
                              ),
                              SizedBox(height: 24.h),
                              Container(
                                height: 35.h,
                                width: 29.w,
                                child: Center(
                                  child: Text(
                                    state.getProgressDetailModel!.journal!
                                        .stepGoalDays
                                        .toString(),
                                    style: AdaptiveTheme.of(context)
                                        .theme
                                        .textTheme
                                        .headline4!
                                        .copyWith(fontSize: 14),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(4.r),
                                ),
                              ),
                              SizedBox(height: 24.h),
                              Text(
                                "your_notes".tr(),
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline3,
                              ),
                              SizedBox(height: 24.h),
                              Text(
                                state.getProgressDetailModel!.journal!.notes!,
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .bodyText2,
                              ),
                              SizedBox(height: 24.h),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ));
        }
      },
    );
  }
}
