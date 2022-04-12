// Created by Muhammed Tolkinov on 09-December-2021

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitness_uncensored/application/auth/sign_up/sign_up_bloc.dart';
import 'package:fitness_uncensored/presentation/components/subscribe_container_component.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';


import 'package:fitness_uncensored/presentation/styles/app_colors.dart';


class ChooseSubscriptionPlanPage extends StatelessWidget {
  const ChooseSubscriptionPlanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 640.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            'sign_up_four_desc'.tr(),
            style: AdaptiveTheme.of(context).theme.textTheme.bodyText2!.copyWith(
              color: AppColors.primaryColor.withOpacity(0.7)
            ),
          ),

          SizedBox(height: 24.h),


          SubscribeContainerComponent(
            price: '\$ 12.99',
            description: 'annualy_money_plan_desc'.tr(),
            subscribeType: 'monthly_plan'.tr(),
            gradient: AppColors.linear,
            onPressed: () {},
          ),

          SizedBox(height: 24.h),

          SubscribeContainerComponent(
            price: '\$ 214.99',
            description: 'annualy_money_plan_desc'.tr(),
            subscribeType: 'annually'.tr(),
            gradient: AppColors.linear2,
            onPressed: () {},
          ),


          const Spacer(),

          MainButtonComponent(
            text: 'continue_with_a_7_day'.tr(),
            margin: EdgeInsets.only(top: 14.h, bottom: 16.h),
            onPressed: () {
              // TODO tanlangan subscribe plan bo'yicha qlish kerak
              context.read<SignUpBloc>().add(const SignUpEvent.choosePlan(planIndex: 1));
            },
          ),
        ],
      ),
    );
  }
}
