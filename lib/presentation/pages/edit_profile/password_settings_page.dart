import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:fitness_uncensored/application/change_password/change_password_bloc.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/components/snack_bar_component.dart';
import 'package:fitness_uncensored/presentation/components/text_field_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class PasswordSettingsPage extends StatefulWidget {
  const PasswordSettingsPage({Key? key}) : super(key: key);

  @override
  State<PasswordSettingsPage> createState() => _PasswordSettingsPageState();
}

class _PasswordSettingsPageState extends State<PasswordSettingsPage> {
  String _currentPassword = '', _newPassword = '', _confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.h),
          child: AppBar(
            foregroundColor: AppColors.primaryColor,
            title: Text(
              "password".tr(),
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
        body: BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
          listener: (context, state) {
            if (state.isUpdatedPasswordSucces) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBarComponent.successSnackBar(
                  message: "your_info_updated".tr(),
                ),
              );
              Navigator.pop(context);
            } else if (state.hasError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBarComponent.errorSnackBar(
                  message: state.error,
                ),
              );
            }
          },
          builder: (context, state) {
            if (state.isLoading) {
              return const AppLoadingComponent();
            } else {
              return Padding(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 22.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'change'.tr(),
                          style: AdaptiveTheme.of(context)
                              .theme
                              .textTheme
                              .headline1,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'password_'.tr(),
                              style: AdaptiveTheme.of(context)
                                  .theme
                                  .textTheme
                                  .headline2,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.h),
                      TextFieldComponent(
                        hint: "current_password".tr(),
                        showSuffixIcon: true,
                        isObscure: true,
                        onChanged: (value) => _currentPassword = value,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () => Navigator.push(
                              context, AppRoutes.forgotPassword()),
                          child: Text(
                            'forgot_password'.tr(),
                            style: TextStyle(
                              color: AppColors.linksColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 32.h),
                      TextFieldComponent(
                        hint: "new_password".tr(),
                        showSuffixIcon: true,
                        isObscure: true,
                        onChanged: (value) => _newPassword = value,
                      ),
                      SizedBox(height: 16.h),
                      TextFieldComponent(
                        hint: "confirm_new_password".tr(),
                        showSuffixIcon: true,
                        isObscure: true,
                        onChanged: (value) => _confirmPassword = value,
                      ),
                    ],
                  ));
            }
          },
        ),
        bottomNavigationBar: MainButtonComponent(
          margin: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 52.h),
          text: 'save'.tr(),
          onPressed: () {
            context.read<ChangePasswordBloc>().add(
                  ChangePasswordEvent.changePassword(
                      currentPassword: _currentPassword,
                      newPassword: _newPassword,
                      confirmPassword: _confirmPassword),
                );
          },
        ),
      ),
    );
  }
}
