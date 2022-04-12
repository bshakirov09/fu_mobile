// Created by Muhammed Tolkinov on 17-December-2021

import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DatePickerComponent {

  static void datePicker({
    required BuildContext context,
    required Function(String) onSaveButtonPressed,
  }) {
    if (Platform.isAndroid) {
      _androidDatePicker(
        context: context,
        onSaveButtonPressed: onSaveButtonPressed
      );
    }
    else {
      _iosDatePicker(
        context: context,
        onSaveButtonPressed: onSaveButtonPressed
      );
    }
  }

  static void _androidDatePicker({
    required BuildContext context,
    required Function(String) onSaveButtonPressed,
  }) async {
    var date = await showDatePicker(
      context: context,
      helpText: 'select_your_birthday'.tr(),
      initialDate: DateTime.now(),
      firstDate: DateTime(1950, 1, 1),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      confirmText: 'save'.tr(),
    );

    if (date != null) {
      final String result = date.toString().length > 10
          ? date.toString().substring(0,10) : '';

      onSaveButtonPressed(result);
    }
  }

  static void _iosDatePicker({
    required BuildContext context,
    required Function(String) onSaveButtonPressed,
  }) {

    String date = '';

    showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        color: Colors.white,
        child: Material(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  onSaveButtonPressed(date);
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'save'.tr(),
                    style: AdaptiveTheme.of(context).theme.textTheme.bodyText2,
                  ),
                ),
              ),

              SizedBox(
                height: 290.h,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime.now(),
                  minimumDate: DateTime(
                    DateTime.now().year,
                    DateTime.now().month,
                    DateTime.now().day - 1
                  ),
                  onDateTimeChanged: (selectedDate) {
                    date = selectedDate.toString().substring(0, 10);
                  }
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
