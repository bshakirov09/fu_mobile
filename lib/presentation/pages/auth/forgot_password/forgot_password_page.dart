
import 'package:fitness_uncensored/domain/auth/enums/forgot_password_pages.dart';
import 'package:fitness_uncensored/presentation/components/snack_bar_component.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/application/auth/forgot_password/forgot_password_bloc.dart';
import 'package:fitness_uncensored/presentation/components/text_field_component.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = '';

  void _sendVerificationCode() {
    if (_formKey.currentState!.validate()) {
      context.read<ForgotPasswordBloc>().add(
        ForgotPasswordEvent.sendVerificationCode(email: _email)
      );
    }
  }

  @override
  void initState() {
    context.read<ForgotPasswordBloc>().add(
      const ForgotPasswordEvent.refreshState()
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        if (state.hasError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBarComponent.errorSnackBar(message: state.error)
          );
        }
        else if (state.isSentVerificationCode) {
          Navigator.push(
            context,
            AppRoutes.verifyEmailCode()
          );
        }
      },
      listenWhen: (context, state) => state.currentPage == ForgotPasswordPages.sendVerificationCode,
      buildWhen: (context, state) => state.currentPage == ForgotPasswordPages.sendVerificationCode,
      builder: (context, state) {
        if (state.isLoading) {
          return const Material(
            color: AppColors.white,
            child: AppLoadingComponent()
          );
        }
        else {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            behavior: HitTestBehavior.opaque,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(56.h),
                child: AppBarComponent(
                  text: "forgot_password_".tr(),
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
                        "we_will_send_a_secret_code".tr(),
                        style: AdaptiveTheme.of(context).theme.textTheme.bodyText2!.copyWith(
                          color: AppColors.primaryColor.withOpacity(0.7)
                        ),
                      ),

                      SizedBox(height: 32.h),

                      TextFieldComponent(
                        hint: "enter_your_email_address".tr(),
                        initialValue: _email,
                        textInputAction: TextInputAction.send,
                        errorText: state.error.isEmpty ? null : state.error,
                        inputType: TextInputType.emailAddress,
                        onChanged: (value) => _email = value,
                        textInputActionOnTap: _sendVerificationCode,
                        validator: (value) {
                          if (value!.isEmpty || !value.contains('@')) {
                            return 'enter_correct_email'.tr();
                          }
                          else {
                            return null;
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: MainButtonComponent(
                text: "send".tr(),
                margin: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 16.h),
                onPressed: _sendVerificationCode,
              ),
            ),
          );
        }
      },
    );
  }
}
