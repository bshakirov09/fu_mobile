// Created by Muhammed Tolkinov on 09-December-2021

import 'package:fitness_uncensored/application/auth/forgot_password/forgot_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitness_uncensored/application/auth/sign_up/sign_up_bloc.dart';
import 'package:fitness_uncensored/presentation/components/gradient_button_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

enum VerifyType {forgotPassword, registrationUser}

class VerifyEmail extends StatefulWidget {
  final VerifyType verifyType;

  const VerifyEmail({
    Key? key,
    required this.verifyType,
  }) : super(key: key);

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {

  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  final BoxDecoration pinPutDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20.r),
    border: Border.all(color: AppColors.primaryColor, width: 1),
  );

  final BoxDecoration selectedPinPutDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20.r),
    border: Border.all(color: AppColors.blue, width: 1),
  );


  @override
  void dispose() {
    _pinPutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 640.h,
      child: Column(
        children: [

          SizedBox(height: 40.h),

          Center(
            child: GradientButtonComponent(
              iconPath: AppIcons.message,
              buttonSize: 124.h,
              onPressed: () {},
            ),
          ),

          SizedBox(height: 43.h),

          Text(
            widget.verifyType == VerifyType.registrationUser
              ? "verify_email".tr()
              : "check_your_mail".tr(),
            style: AdaptiveTheme.of(context).theme.textTheme.headline3,
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(40.w, 16.h, 40.w, 8.h),
            child: Text(
              "enter_the_secret_code".tr(),
              style: AdaptiveTheme.of(context).theme.textTheme.bodyText2!.copyWith(
                color: AppColors.primaryColor.withOpacity(0.7)
              ),
              textAlign: TextAlign.center,
            ),
          ),

          TextButton(
            onPressed: () {
              if (widget.verifyType == VerifyType.registrationUser) {
                context.read<SignUpBloc>().add(
                  const SignUpEvent.resendVerificationCode()
                );
              }
              else {
                context.read<ForgotPasswordBloc>().add(
                  const ForgotPasswordEvent.resendVerificationCode()
                );
              }
            },
            child: Text(
              "resend_a_verification_code".tr(),
              style: AdaptiveTheme.of(context).theme.textTheme.bodyText2!.copyWith(
                color: AppColors.linksColor
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 42.h),

          PinPut(
            eachFieldWidth: 59.0.w,
            eachFieldHeight: 59.0.w,
            withCursor: true,
            fieldsCount: 4,
            focusNode: _pinPutFocusNode,
            controller: _pinPutController,
            submittedFieldDecoration: selectedPinPutDecoration,
            selectedFieldDecoration: pinPutDecoration,
            followingFieldDecoration: pinPutDecoration,
            pinAnimationType: PinAnimationType.scale,
            textStyle: AdaptiveTheme.of(context).theme.textTheme.headline3,
          ),

          const Spacer(),

          MainButtonComponent(
            text: widget.verifyType == VerifyType.registrationUser
              ? "verify".tr()
              : "continue".tr(),
            onPressed: () {
              if (_pinPutController.text.length == 4) {
                if (widget.verifyType == VerifyType.registrationUser) {
                  context.read<SignUpBloc>().add(SignUpEvent.verifyEmail(
                    code: _pinPutController.text
                  ));
                }
                else {
                  context.read<ForgotPasswordBloc>().add(
                    ForgotPasswordEvent.verifyCode(
                      code: _pinPutController.text
                    )
                  );
                }
              }
            },
          )
        ],
      ),
    );
  }
}
