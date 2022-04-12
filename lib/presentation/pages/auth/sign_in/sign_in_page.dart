// Created by Muhammed Tolkinov on 08-December-2021

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fitness_uncensored/application/auth/sign_up/sign_up_bloc.dart';
import 'package:fitness_uncensored/domain/auth/failure/auth_failure.dart';
import 'package:fitness_uncensored/presentation/components/snack_bar_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/components/social_auth_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/application/auth/sign_in/sign_in_bloc.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/text_field_component.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  String _email = '', _password = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInBloc>(
      create: (context) => SignInBloc(),
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        behavior: HitTestBehavior.opaque,
        child: BlocConsumer<SignInBloc, SignInState>(
          listener: (context, state) {
            if (state.isLoginSuccess) {
              Navigator.pushAndRemoveUntil(
                context,
                AppRoutes.main()
                , (route) => false
              );
            }
            else if (state.hasSocialAuthError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBarComponent.errorSnackBar(message: state.socialAuthError)
              );
            }
          },
          builder: (context, state) {
            if (state.isLoading) {
              return const Material(
                child: AppLoadingComponent(),
              );
            }
            else {
              return Scaffold(
                body: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [

                        SizedBox(height: 90.h),

                        Image.asset(
                          AppIcons.appLogo,
                          width: 55.h,
                          height: 55.h,
                        ),

                        SizedBox(height: 28.h),

                        Text(
                          'welcome_to'.tr(),
                          style: AdaptiveTheme.of(context).theme.textTheme.caption!.copyWith(
                            color: AppColors.primaryColor
                          ),
                        ),

                        Text(
                          'fitness_uncensored'.tr(),
                          style: AdaptiveTheme.of(context).theme.textTheme.headline3,
                        ),

                        SizedBox(height: 30.h),

                        Text(
                          'social_login'.tr(),
                          style: AdaptiveTheme.of(context).theme.textTheme.subtitle1!.copyWith(
                            color: AppColors.primaryColor.withOpacity(0.7)
                          ),
                        ),

                        SizedBox(height: 20.h),

                        SocialAuthComponent(
                          onPressedItem: (authType) {
                            context.read<SignInBloc>().add(SignInEvent.socialAuth(
                              socialAuthType: authType
                            ));
                          },
                        ),

                        SizedBox(height: 20.h),

                        Text(
                          'or'.tr(),
                          style: AdaptiveTheme.of(context).theme.textTheme.subtitle1!.copyWith(
                            color: AppColors.primaryColor.withOpacity(0.7)
                          ),
                        ),

                        SizedBox(height: 30.h),


                        TextFieldComponent(
                          hint: 'email'.tr(),
                          errorText: state.hasError ? state.error : null,
                          initialValue: _email,
                          inputType: TextInputType.emailAddress,
                          onChanged: (value) => _email = value,
                          validator: (value) {
                            return AuthFailure.validateEmail(value ?? '').fold(
                              (l) => l.maybeMap(
                                empty: (_) => 'this_field_can_not_be_empty'.tr(),
                                invalidEmail: (_) => 'enter_correct_email'.tr(),
                                orElse: () => null
                              ),
                              (r) => null
                            );
                          },
                        ),

                        SizedBox(height: 8.h),

                        TextFieldComponent(
                          hint: 'password'.tr(),
                          initialValue: _password,
                          errorText: state.hasError ? state.error : null,
                          isObscure: true,
                          showSuffixIcon: true,
                          textInputAction: TextInputAction.send,
                          onChanged: (value) => _password = value,
                          validator: (value) {
                            return AuthFailure.validatePassword(value ?? '').fold(
                              (l) => l.maybeMap(
                                empty: (_) => 'this_field_can_not_be_empty'.tr(),
                                passwordMustBe: (_) => 'password_must_be'.tr(),
                                orElse: () => null,
                              ),
                              (r) => null
                            );
                          },
                          textInputActionOnTap: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<SignInBloc>().add(SignInEvent.signIn(
                                email: _email,
                                password: _password
                              ));
                            }
                          },
                        ),

                        Align(
                          alignment: Alignment.topRight,
                          child: TextButton(
                            onPressed: () => Navigator.push(
                              context,
                              AppRoutes.forgotPassword()
                            ),
                            child: Text(
                              'forgot_password'.tr(),
                              style: AdaptiveTheme.of(context).theme.textTheme.subtitle2!.copyWith(
                                color: AppColors.linksColor.withOpacity(0.7)
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                bottomNavigationBar: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    MainButtonComponent(
                      text: 'login'.tr(),
                      margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 4.h),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<SignInBloc>().add(SignInEvent.signIn(
                            email: _email,
                            password: _password
                          ));
                        }
                      }
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(
                          'dont_have_account'.tr(),
                          style: AdaptiveTheme.of(context).theme.textTheme.bodyText2,
                        ),

                        TextButton(
                          onPressed: () {
                            context.read<SignUpBloc>().add(
                              const SignUpEvent.refreshState()
                            );
                            
                            Navigator.push(
                              context,
                              AppRoutes.signUp()
                            );
                          },
                          child: Text(
                            'sign_up'.tr(),
                            style: AdaptiveTheme.of(context).theme.textTheme.subtitle2!.copyWith(
                              color: AppColors.linksColor.withOpacity(0.7)
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16.h)
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
