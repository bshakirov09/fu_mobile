// Created by Muhammed Tolkinov on 09-December-2021

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/application/profile/profile_bloc.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/gradient_button_component.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';

import 'local_components/user_info_row_component.dart';

class ProfilePage extends StatefulWidget {

  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  String formatFeet(String? feet) {
    if (feet != null) {
      final double result = double.parse(feet) / 12;
      return '${result.toStringAsFixed(2)} ${"feet".tr()}';
    }
    else {
      return '0 ${"feet".tr()}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: AppBarComponent(
          text: 'profile'.tr(),
        ),
      ),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (!UserRepositoryModel.authStatus) {
            Navigator.pushAndRemoveUntil(
              context,
              AppRoutes.signIn()
              , (route) => false
            );
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const AppLoadingComponent();
          }
          else if (state.hasError) {
            return ErrorComponent(errorMessage: state.error);
          }
          else {
            return  SingleChildScrollView(
              padding: EdgeInsets.only(
                left: 30.w,
                right: 30.w,
                top: 12.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [

                      GradientButtonComponent(
                        buttonSize: 64.h,
                        imageUrl: state.profile?.profileImage?.file ?? '',
                        isNetworkImage: true,
                        onPressed: () {},
                      ),

                      SizedBox(width: 24.w),

                      SizedBox(
                        width: 190.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${state.profile?.firstName} ${state.profile?.lastName}',
                              style: AdaptiveTheme.of(context).theme.textTheme.headline4,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),

                            SizedBox(height: 3.h),

                            Text(
                              state.profile!.email,
                              style: AdaptiveTheme.of(context).theme.textTheme.subtitle2,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),

                      const Spacer(),

                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          AppRoutes.editProfile()
                        ),
                        child: SvgPicture.asset(AppIcons.createFilled),
                      )
                    ],
                  ),

                  SizedBox(height: 16.h),

                  MainButtonComponent(
                    onPressed: () {},
                    text: "subscribe".tr(),
                    margin: EdgeInsets.only(bottom: 24.h),
                  ),

                  UserInfoRowComponent(
                    onPressed: () => Navigator.push(
                      context,
                      AppRoutes.heightSettings()
                    ),
                    text: 'height'.tr(),
                    rowInfo: formatFeet(state.profile?.height),
                    leftIcon: AppIcons.height,
                  ),

                  UserInfoRowComponent(
                    onPressed: () => Navigator.push(
                      context,
                      AppRoutes.weightSettings()
                    ),
                    text: 'weight'.tr(),
                    rowInfo: "${state.profile!.weight} ${"lb".tr()}",
                    leftIcon: AppIcons.monitorWeightOut,
                  ),

                  UserInfoRowComponent(
                    onPressed: () => Navigator.push(
                      context,
                      AppRoutes.birthdaySettings()
                    ),
                    text: 'birthday'.tr(),
                    leftIcon: AppIcons.calendarTodayOutlined,
                  ),

                  UserInfoRowComponent(
                    onPressed: () => Navigator.push(
                      context,
                      AppRoutes.changePassword()
                    ),
                    text: 'password'.tr(),
                    leftIcon: AppIcons.password,
                  ),

                  UserInfoRowComponent(
                    onPressed: () => Navigator.push(
                      context,
                      AppRoutes.notificationSettings()
                    ),
                    text: 'notification_settings'.tr(),
                    leftIcon: AppIcons.editNotificationsOut,
                  ),


                  SizedBox(height: 30.h),

                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      AppRoutes.faq()
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "faq".tr(),
                        style: AdaptiveTheme.of(context).theme.textTheme.bodyText1,
                      ),
                    ),
                  ),


                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      AppRoutes.termsAndConditions()
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "terms_and_conditions".tr(),
                        style: AdaptiveTheme.of(context).theme.textTheme.bodyText1,
                      ),
                    ),
                  ),

                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      AppRoutes.privacyPolicy()
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "privacy_and_policy".tr(),
                        style: AdaptiveTheme.of(context).theme.textTheme.bodyText1,
                      ),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      context.read<ProfileBloc>().add(const ProfileEvent.logout());
                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "logout".tr(),
                        style: AdaptiveTheme.of(context).theme.textTheme.bodyText1!.copyWith(
                          color: AppColors.red
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
