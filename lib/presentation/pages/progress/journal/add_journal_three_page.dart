import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/application/progress/journalBloc/journal_bloc.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_detail_model.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/components/three_type_text_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Period { yes, no }

class AddJournalThreePage extends StatefulWidget {
  const AddJournalThreePage({Key? key}) : super(key: key);

  @override
  State<AddJournalThreePage> createState() => _AddJournalThreePageState();
}

class _AddJournalThreePageState extends State<AddJournalThreePage> {
  double value1 = 7;
  double value2 = 7;

  void _continue() {
    final ProgressJournalDetailModel progressJournalDetailModel =
        ProgressJournalDetailModel(
      waterGoalDays: value1.toInt(),
      stepGoalDays: value2.toInt(),
    );
    context.read<JournalBloc>().add(JournalEvent.getNextPage(
          progressJournalDetailModel: progressJournalDetailModel,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ThreeTypeTextComponent(
            text1: "how_many_days_a_week_did_you_hit_water".tr() + "\n",
            text2: "water".tr(),
            text3: "goal".tr(),
            textStyle1: AdaptiveTheme.of(context).theme.textTheme.headline1!,
            textStyle2: AdaptiveTheme.of(context).theme.textTheme.headline2!,
            textStyle3: AdaptiveTheme.of(context).theme.textTheme.headline1!,
          ),
          SizedBox(height: 56.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 26.h,
                width: 30.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: AppColors.grey,
                ),
                child: Center(
                    child: Text(
                  "0",
                  style: AdaptiveTheme.of(context)
                      .theme
                      .textTheme
                      .headline4!
                      .copyWith(fontSize: 14.sp),
                )),
              ),
              Expanded(
                child: Slider.adaptive(
                  value: value1,
                  onChanged: (newValue) {
                    setState(() => value1 = newValue);
                  },
                  inactiveColor: AppColors.disabledColor,
                  activeColor: AppColors.primaryColor,
                  min: 0,
                  max: 7,
                  divisions: 7,
                  label: "$value1",
                ),
              ),
              Container(
                height: 26.h,
                width: 30.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: AppColors.grey,
                ),
                child: Center(
                  child: Text(
                    "7",
                    style: AdaptiveTheme.of(context)
                        .theme
                        .textTheme
                        .headline4!
                        .copyWith(fontSize: 14.sp),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 32.h),
          Text(
            "how_many_days_a_week_did_you_hit_step".tr(),
            style: AdaptiveTheme.of(context).theme.textTheme.headline1,
          ),
          SizedBox(height: 56.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 26.h,
                width: 30.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: AppColors.grey,
                ),
                child: Center(
                    child: Text(
                  "0",
                  style: AdaptiveTheme.of(context)
                      .theme
                      .textTheme
                      .headline4!
                      .copyWith(fontSize: 14.sp),
                )),
              ),
              Expanded(
                child: Slider.adaptive(
                  value: value2,
                  onChanged: (newValue) {
                    setState(() => value2 = newValue);
                  },
                  inactiveColor: AppColors.disabledColor,
                  activeColor: AppColors.primaryColor,
                  min: 0,
                  max: 7,
                  divisions: 7,
                  label: "$value2",
                ),
              ),
              Container(
                height: 26.h,
                width: 30.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: AppColors.grey,
                ),
                child: Center(
                  child: Text(
                    "7",
                    style: AdaptiveTheme.of(context)
                        .theme
                        .textTheme
                        .headline4!
                        .copyWith(fontSize: 14.sp),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          MainButtonComponent(
            margin: EdgeInsets.only(bottom: 16.h, right: 30.w, left: 30.w),
            text: 'continue'.tr(),
            onPressed: _continue,
          ),
        ],
      ),
    );
  }
}
