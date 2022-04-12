import 'package:fitness_uncensored/presentation/pages/progress/journal/add_journal_one_page.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class IntensityRateComponent extends StatelessWidget {
  final IntensityRate intensityRateType;
  final ValueChanged<IntensityRate> onChanged;

  const IntensityRateComponent({
    Key? key,
    required this.intensityRateType,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'low'.tr(),
                  style: AdaptiveTheme.of(context).theme.textTheme.bodyText2,
                ),
                Radio(
                    activeColor: AppColors.primaryColor,
                    value: IntensityRate.low,
                    groupValue: intensityRateType,
                    onChanged: (value) => onChanged(value as IntensityRate)),
              ],
            ),
            Row(
              children: [
                Text(
                  'medium'.tr(),
                  style: AdaptiveTheme.of(context).theme.textTheme.bodyText2,
                ),
                Radio(
                    activeColor: AppColors.primaryColor,
                    value: IntensityRate.medium,
                    groupValue: intensityRateType,
                    onChanged: (value) => onChanged(value as IntensityRate)),
              ],
            ),
            Row(
              children: [
                Text(
                  'high'.tr(),
                  style: AdaptiveTheme.of(context).theme.textTheme.bodyText2,
                ),
                Radio(
                    activeColor: AppColors.primaryColor,
                    value: IntensityRate.high,
                    groupValue: intensityRateType,
                    onChanged: (value) => onChanged(value as IntensityRate)),
              ],
            ),
          ],
        )
      ],
    );
  }
}
