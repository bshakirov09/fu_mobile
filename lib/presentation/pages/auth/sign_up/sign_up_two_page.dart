// Created by Muhammed Tolkinov on 09-December-2021

import 'package:fitness_uncensored/application/auth/sign_up/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitness_uncensored/infrastructure/repository/models/auth_user_model.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/components/text_field_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class SignUpTwoPage extends StatefulWidget {
  const SignUpTwoPage({Key? key}) : super(key: key);

  @override
  State<SignUpTwoPage> createState() => _SignUpTwoPageState();
}

class _SignUpTwoPageState extends State<SignUpTwoPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = '', _password = '', _confirmPassword = '';

  void _continue() {
    if (_formKey.currentState!.validate()) {
      final AuthUserModel authUserModel = AuthUserModel(
        email: _email,
        password: _password,
        confirmPassword: _confirmPassword,
      );
      context.read<SignUpBloc>().add(SignUpEvent.getNextPage(
        authUserModel: authUserModel,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 640.h,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              'sign_up_two_desc'.tr(),
              style: AdaptiveTheme.of(context).theme.textTheme.bodyText2!.copyWith(
                color: AppColors.primaryColor.withOpacity(0.7)
              ),
            ),

            SizedBox(height: 24.h),


            TextFieldComponent(
              hint: 'email'.tr(),
              initialValue: context.read<SignUpBloc>().authUserModel?.email,
              inputType: TextInputType.emailAddress,
              onChanged: (value) => _email = value,
              validator: (value) {
                if (value!.isEmpty || !value.contains('@')) {
                  return 'enter_correct_email'.tr();
                }
                else {
                  return null;
                }
              },
            ),

            SizedBox(height: 16.h),

            TextFieldComponent(
              hint: 'password'.tr(),
              initialValue: context.read<SignUpBloc>().authUserModel?.password,
              isObscure: true,
              showSuffixIcon: true,
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
              hint: 'confirm_password'.tr(),
              initialValue: context.read<SignUpBloc>().authUserModel?.confirmPassword,
              isObscure: true,
              showSuffixIcon: true,
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

            const Spacer(),

            MainButtonComponent(
              text: 'continue'.tr(),
              margin: EdgeInsets.only(top: 14.h, bottom: 27.h),
              onPressed: _continue,
            ),
          ],
        ),
      ),
    );
  }
}
