// Created by Muhammed Tolkinov on 25-December-2021

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class SearchComponent extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final VoidCallback onSearchButtonPressed;

  const SearchComponent({
    Key? key,
    required this.onChanged,
    required this.onSearchButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => onChanged(value),
      autofocus: true,
      textInputAction: TextInputAction.search,
      onFieldSubmitted: (value) => onSearchButtonPressed(),
      decoration: InputDecoration(
        hintText: "search".tr(),
        suffixIcon: GestureDetector(
          onTap: onSearchButtonPressed,
          child: SvgPicture.asset(
            AppIcons.search,
            height: 24.h,
            width: 24.w,
          ),
        ),
        suffixIconConstraints: BoxConstraints(
          minWidth: 24.w,
          minHeight: 24.h,
        ),
        focusColor: AppColors.primaryColor,
        hoverColor: AppColors.primaryColor,
        hintStyle: AdaptiveTheme.of(context).theme.textTheme.subtitle2,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
