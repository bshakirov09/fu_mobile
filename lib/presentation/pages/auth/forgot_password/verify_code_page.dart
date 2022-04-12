// Created by Muhammed Tolkinov on 20-December-2021

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/pages/auth/verify_email/verify_email_page.dart';
import 'package:fitness_uncensored/domain/auth/enums/forgot_password_pages.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/components/snack_bar_component.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:fitness_uncensored/application/auth/forgot_password/forgot_password_bloc.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      behavior: HitTestBehavior.opaque,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarComponent(),
        ),
        body: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
          listener: (context, state) {
            if (state.hasError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBarComponent.errorSnackBar(message: state.error)
              );
            }
            else if (state.isVerifiedCode) {
              Navigator.push(
                context,
                AppRoutes.resetPassword()
              );
            }
          },
          listenWhen: (context, state) => state.currentPage == ForgotPasswordPages.verifyCode,
          buildWhen: (context, state) => state.currentPage == ForgotPasswordPages.verifyCode,
          builder: (context, state) {
            if (state.isLoading) {
              return const AppLoadingComponent();
            }
            else {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: const VerifyEmail(verifyType: VerifyType.forgotPassword)
              );
            }
          },
        ),
      ),
    );
  }
}
