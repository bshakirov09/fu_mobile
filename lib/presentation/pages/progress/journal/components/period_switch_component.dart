import 'package:fitness_uncensored/presentation/pages/progress/journal/add_journal_two_page.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PeriodSwitchComponent extends StatelessWidget {
  final Period periodTye;
  final ValueChanged<Period> onChanged;

  const PeriodSwitchComponent({
    Key? key,
    required this.periodTye,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Row(
              children: [
                Text(
                  'yes'.tr(),
                  style: AdaptiveTheme.of(context).theme.textTheme.bodyText2,
                ),
                Radio(
                    activeColor: AppColors.primaryColor,
                    value: Period.yes,
                    groupValue: periodTye,
                    onChanged: (value) => onChanged(value as Period)),
              ],
            ),
            SizedBox(width: 70.w),
            Row(
              children: [
                Text(
                  'no'.tr(),
                  style: AdaptiveTheme.of(context).theme.textTheme.bodyText2,
                ),
                Radio(
                    activeColor: AppColors.primaryColor,
                    value: Period.no,
                    groupValue: periodTye,
                    onChanged: (value) => onChanged(value as Period)),
              ],
            ),
          ],
        )
      ],
    );
  }
}
