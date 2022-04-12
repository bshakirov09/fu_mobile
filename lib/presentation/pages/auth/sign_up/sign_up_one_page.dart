// Created by Muhammed Tolkinov on 09-December-2021

import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitness_uncensored/infrastructure/repository/models/auth_user_model.dart';
import 'package:fitness_uncensored/application/auth/sign_up/sign_up_bloc.dart';
import 'package:fitness_uncensored/domain/user/gender_type.dart';
import 'package:fitness_uncensored/presentation/components/text_field_component.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/components/social_auth_component.dart';
import 'package:fitness_uncensored/presentation/components/gender_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class SignUpOnePage extends StatefulWidget {
  const SignUpOnePage({Key? key}) : super(key: key);

  @override
  State<SignUpOnePage> createState() => _SignUpOnePageState();
}

class _SignUpOnePageState extends State<SignUpOnePage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name = '', _secondName = '';
  GenderType _gender = GenderType.female;

  void _continue() {
    if (_formKey.currentState!.validate()) {
      final AuthUserModel authUserModel = AuthUserModel(
        firstName: _name,
        lastName: _secondName,
        gender: _gender
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
              'sign_up_one_desc'.tr(),
              style: AdaptiveTheme.of(context).theme.textTheme.bodyText2!.copyWith(
                color: AppColors.primaryColor.withOpacity(0.7)
              ),
            ),

            SizedBox(height: 24.h),


            TextFieldComponent(
              hint: 'name'.tr(),
              initialValue: context.read<SignUpBloc>().authUserModel?.firstName,
              onChanged: (value) => _name = value,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'enter_your_name'.tr();
                }
                else {
                  return null;
                }
              },
            ),

            SizedBox(height: 16.h),

            TextFieldComponent(
              hint: 'second_name'.tr(),
              initialValue: context.read<SignUpBloc>().authUserModel?.lastName,
              onChanged: (value) => _secondName = value,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'enter_your_second_name'.tr();
                }
                else {
                  return null;
                }
              },
            ),

            SizedBox(height: 24.h),

            GenderComponent(
              genderType: _gender,
              onChanged: (gender) => setState(() => _gender = gender),
            ),

            const Spacer(),

            Row(
              children: [

                Text(
                  'by_signing_up_agree'.tr(),
                  style: AdaptiveTheme.of(context).theme.textTheme.bodyText2,
                ),

                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    AppRoutes.termsAndConditions()
                  ),
                  child: Text(
                    'terms_and_conditions'.tr(),
                    style: AdaptiveTheme.of(context).theme.textTheme.bodyText2!.copyWith(
                      color: AppColors.linksColor
                    ),
                  )
                ),
              ],
            ),

            MainButtonComponent(
              text: 'continue'.tr(),
              margin: EdgeInsets.only(top: 14.h, bottom: 27.h),
              onPressed: _continue,
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'or_social_sign_up'.tr(),
                style: AdaptiveTheme.of(context).theme.textTheme.subtitle1!.copyWith(
                  color: AppColors.primaryColor.withOpacity(0.7)
                ),
              ),
            ),

            SizedBox(height: 20.h),

            SocialAuthComponent(
              onPressedItem: (authType) {

              },
            ),

            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
