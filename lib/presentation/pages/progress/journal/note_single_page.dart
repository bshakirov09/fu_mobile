import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/application/progress/journalBloc/journal_bloc.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/components/icon_choosen_component.dart';
import 'package:fitness_uncensored/presentation/components/three_type_text_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/utils/format_date.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:flutter_svg/svg.dart';

enum RateWorkoutRadio { lafayette }

class NoteSinglePage extends StatefulWidget {
  final int id;

  const NoteSinglePage({
    required this.id,
    Key? key,
  }) : super(key: key);

  @override
  State<NoteSinglePage> createState() => _NoteSinglePageState();
}

class _NoteSinglePageState extends State<NoteSinglePage> {
  final RateWorkoutRadio? _character = RateWorkoutRadio.lafayette;

  @override
  void initState() {
    context.read<JournalBloc>().add(
          JournalEvent.getDetailJournal(id: widget.id),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.h),
          child: const AppBarComponent(),
        ),
        body: BlocBuilder<JournalBloc, JournalState>(
          builder: (context, state) {
            if (state.isLoading || state.progressJournalDetailModel == null) {
              return const AppLoadingComponent();
            } else if (state.hasError) {
              return ErrorComponent(errorMessage: state.error);
            } else {
              return Padding(
                padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "notes".tr(),
                          style: AdaptiveTheme.of(context)
                              .theme
                              .textTheme
                              .headline1,
                        ),
                        Text(
                          FormatDate.mmDYear(
                              date: state
                                  .progressJournalDetailModel!.createdDttm
                                  .toString()),
                          style: AdaptiveTheme.of(context)
                              .theme
                              .textTheme
                              .headline4,
                        ),
                      ],
                    ),
                    SizedBox(height: 32.h),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
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
                                  state.progressJournalDetailModel!
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
                                    switchCase:
                                        state.progressJournalDetailModel!.mood!,
                                  ),
                                ),
                                SizedBox(height: 14.h),
                                Text(
                                  state.progressJournalDetailModel!.mood!.tr(),
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
                                            .progressJournalDetailModel!
                                            .digestion!)),
                                SizedBox(height: 14.h),
                                Text(
                                  state.progressJournalDetailModel!.digestion!
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
                                  state.progressJournalDetailModel!.period!
                                      ? "yes".tr()
                                      : "no".tr(),
                                  style: AdaptiveTheme.of(context)
                                      .theme
                                      .textTheme
                                      .bodyText2,
                                ),
                              ],
                            ),
                            SizedBox(width: 24.h),
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
                                  state
                                      .progressJournalDetailModel!.waterGoalDays
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
                                  state.progressJournalDetailModel!.stepGoalDays
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
                              state.progressJournalDetailModel!.notes!,
                              style: AdaptiveTheme.of(context)
                                  .theme
                                  .textTheme
                                  .bodyText2,
                            ),
                            SizedBox(height: 24.h),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
