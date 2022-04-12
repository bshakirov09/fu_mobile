// Created by Muhammed Tolkinov on 15-January-2022

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';

import '../../styles/app_colors.dart';
import 'faq_item.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  _FAQPageState createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  List<bool> temp = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: AppBar(
          foregroundColor: AppColors.primaryColor,
          title: Text(
            "faq".tr(),
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
      body: ListView.builder(
        itemCount: 3,
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 16.h),
        itemBuilder: (context, i) {
          return FAQItem(
            isSelected: temp[i],
            onPressed: () => setState(() => temp[i] = !temp[i]),
          );
        },
      ),
    );
  }
}
