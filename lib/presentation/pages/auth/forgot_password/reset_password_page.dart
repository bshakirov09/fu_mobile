
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitness_uncensored/application/auth/forgot_password/forgot_password_bloc.dart';
import 'package:fitness_uncensored/domain/auth/enums/forgot_password_pages.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/snack_bar_component.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/components/text_field_component.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:fitness_uncensored/presentation/components/dialog_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() =>
      _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _password = '', _confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        if (state.hasError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBarComponent.errorSnackBar(message: state.error)
          );
        }
        else if (state.resetPasswordStatus) {
          showDialog(
            context: context,
            barrierColor: const Color.fromRGBO(0, 0, 0, 0.5),
            builder: (context) => DialogComponent(
              bodyText: 'password_changed_successfully'.tr(),
              buttonText: 'login'.tr(),
              onPressed: () => Navigator.pushAndRemoveUntil(
                context,
                AppRoutes.signIn()
                , (route) => false
              ),
            ),
          );
        }
      },
      listenWhen: (context, state) => state.currentPage == ForgotPasswordPages.resetPassword,
      buildWhen: (context, state) => state.currentPage == ForgotPasswordPages.resetPassword,
      builder: (context, state) {
        if (state.isLoading) {
          return const Material(
            color: AppColors.white,
            child: AppLoadingComponent(),
          );
        }
        else {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(56.h),
                child: AppBarComponent(
                  text: "create_new_password".tr(),
                ),
              ),
              body: Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        width: double.infinity,
                        height: 4.h,
                        margin: EdgeInsets.only(bottom: 24.h),
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),

                      Text(
                        "create_new_password_desc".tr(),
                        style: AdaptiveTheme.of(context).theme.textTheme.bodyText2!.copyWith(
                          color: AppColors.primaryColor.withOpacity(0.7)
                        ),
                      ),

                      SizedBox(height: 32.h),

                      TextFieldComponent(
                        hint: "new_password".tr(),
                        showSuffixIcon: true,
                        isObscure: true,
                        onChanged: (value) => _password = value,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'this_field_can_not_be_empty'.tr();
                          }
                          else if (_password != _confirmPassword) {
                            return 'password_does_not_match'.tr();
                          }
                          else {
                            return null;
                          }
                        },
                      ),

                      SizedBox(height: 16.h),

                      TextFieldComponent(
                        hint: "confirm_new_password".tr(),
                        showSuffixIcon: true,
                        isObscure: true,
                        onChanged: (value) => _confirmPassword = value,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'this_field_can_not_be_empty'.tr();
                          }
                          else if (_password != _confirmPassword) {
                            return 'password_does_not_match'.tr();
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: MainButtonComponent(
                text: "create".tr(),
                margin: EdgeInsets.only(bottom: 20.h, left: 30.w, right: 30.w),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<ForgotPasswordBloc>().add(ForgotPasswordEvent.resetPassword(
                      password: _password,
                      confirmPassword: _confirmPassword,
                    ));
                  }
                }
              ),
            ),
          );
        }
      },
    );
  }
}
