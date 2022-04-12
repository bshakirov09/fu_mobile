// Created by Muhammed Tolkinov on 14-December-2021

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/presentation/components/gradient_button_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscribeContainerComponent extends StatelessWidget {
  final String price;
  final String subscribeType;
  final String description;
  final VoidCallback onPressed;
  final LinearGradient gradient;

  const SubscribeContainerComponent({
    Key? key,
    required this.gradient,
    required this.price,
    required this.subscribeType,
    required this.description,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(1.h),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withOpacity(0.07),
            offset: const Offset(0, 4),
            blurRadius: 4
          )
        ]
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(22.w, 16.h, 16.w, 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                price,
                style: AdaptiveTheme.of(context).theme.textTheme.headline3,
              ),

              SizedBox(height: 4.h),

              Text(
                subscribeType,
                style: AdaptiveTheme.of(context).theme.textTheme.bodyText2,
              ),

              SizedBox(height: 15.h),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Expanded(
                    child: Text(
                      description,
                      style: AdaptiveTheme.of(context).theme.textTheme.bodyText2!.copyWith(
                        color: AppColors.primaryColor.withOpacity(0.5)
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: GradientButtonComponent(
                      onPressed: onPressed,
                      iconPath: AppIcons.arrowForward,
                      buttonSize: 50.h
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
