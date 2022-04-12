
// Created by Muhammed Tolkinov on 09-December-2021

import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/domain/user/gender_type.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class GenderComponent extends StatelessWidget {

  final GenderType genderType;
  final ValueChanged<GenderType> onChanged;

  const GenderComponent({
    Key? key,
    required this.genderType,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [

        Text(
          'gender'.tr(),
          style: AdaptiveTheme.of(context).theme.textTheme.headline4,
        ),

        SizedBox(height: 20.h),

        Row(
          children: [

            Text(
              'female'.tr(),
              style: AdaptiveTheme.of(context).theme.textTheme.bodyText2,
            ),

            Radio(
              activeColor: AppColors.primaryColor,
              value: GenderType.female,
              groupValue: genderType,
              onChanged: (value) => onChanged(value as GenderType)
            ),

            SizedBox(width: 50.w),

            Text(
              'male'.tr(),
              style: AdaptiveTheme.of(context).theme.textTheme.bodyText2,
            ),

            Radio(
              activeColor: AppColors.primaryColor,
              value: GenderType.male,
              groupValue: genderType,
              onChanged: (value) => onChanged(value as GenderType)
            ),
          ],
        )
      ],
    );
  }
}
