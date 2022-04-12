// Created by Muhammed Tolkinov on 08-December-2021

import 'dart:io';

import 'package:fitness_uncensored/domain/auth/enums/social_auth_type.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'gradient_button_component.dart';

typedef OnPressedItem<SocialAuthType> = void Function(
  SocialAuthType authType
);

class SocialAuthComponent extends StatelessWidget {

  final OnPressedItem<SocialAuthType> onPressedItem;

  const SocialAuthComponent({
    Key? key,
    required this.onPressedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

        GradientButtonComponent(
          iconPath: AppIcons.facebook,
          onPressed: () => onPressedItem(SocialAuthType.facebook),
          buttonSize: 53.h,
        ),

        GradientButtonComponent(
          iconPath: AppIcons.google,
          onPressed: () => onPressedItem(SocialAuthType.google),
          buttonSize: 53.h,
        ),

        if (Platform.isIOS) GradientButtonComponent(
          iconPath: AppIcons.apple,
          onPressed: () => onPressedItem(SocialAuthType.apple),
          buttonSize: 53.h,
        ),
      ],
    );
  }
}
