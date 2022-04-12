// Created by Muhammed Tolkinov on 20-December-2021

import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';

class NotificationSettingsPage extends StatefulWidget {
  const NotificationSettingsPage({Key? key}) : super(key: key);

  @override
  State<NotificationSettingsPage> createState() =>
      _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: AppBar(
          foregroundColor: AppColors.primaryColor,
          title: Text(
            "notification_settings".tr(),
            style: AdaptiveTheme.of(context)
                .theme
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          backgroundColor: AppColors.white,
          elevation: 4,
          shadowColor: AppColors.white.withOpacity(0.4),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 22.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            row(
              text: "achievement",
            ),
            Divider(
              thickness: 1.h,
              color: AppColors.disabledColor.withOpacity(0.5),
            ),
            row(
              text: "journal",
            ),
            Divider(
              thickness: 1.h,
              color: AppColors.disabledColor.withOpacity(0.5),
            ),
            row(
              text: "progress",
            ),
          ],
        ),
      ),
    );
  }

  Widget row({required String text}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text.tr(),
          style: AdaptiveTheme.of(context).theme.textTheme.bodyText1,
        ),
        Switch(
          activeColor: AppColors.blue,
          value: status,
          onChanged: (value) {
            setState(() {
              status = value;
            });
          },
        ),
      ],
    );
  }
}
