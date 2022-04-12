// Created by Muhammed Tolkinov on 09-December-2021

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_uncensored/domain/auth/enums/auth_pages.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/application/auth/sign_up/sign_up_bloc.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/snack_bar_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';

import 'local_components/progress_indicator_container_component.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      behavior: HitTestBehavior.opaque,
      child: BlocConsumer<SignUpBloc, SignUpState>(
        listener: (context, state) {
          if (state.hasError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBarComponent.errorSnackBar(message: state.error)
            );
          }
          else if (state.isCreatedAccount) {
            Navigator.pushAndRemoveUntil(
              context,
              AppRoutes.main()
              , (route) => false
            );
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const Material(
              color: AppColors.white,
              child: AppLoadingComponent(),
            );
          }
          else {
            return WillPopScope(
              onWillPop: () async {
                if (state.currentPageEnum == AuthPages.signUpOne) {
                  Navigator.pop(context);
                }
                else {
                  context.read<SignUpBloc>().add(
                    const SignUpEvent.getPreviousPage()
                  );
                }
                return true;
              },
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(50),
                  child: AppBarComponent(
                    text: state.appBarText,
                    rightButtonText: state.currentPageEnum == AuthPages.fillProfile
                        ? 'skip'.tr() : '',
                    onRightButtonPressed: () {
                      context.read<SignUpBloc>().add(const SignUpEvent.getNextPage());
                    },
                    onBackButtonPressed: () {
                      if (state.currentPageEnum == AuthPages.signUpOne) {
                        Navigator.pop(context);
                      }
                      else {
                        context.read<SignUpBloc>().add(
                          const SignUpEvent.getPreviousPage()
                        );
                      }
                    },
                  ),
                ),
                body: Column(
                  children: [

                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.fromLTRB(30.w, 16.h, 30.w, 24.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(4, (index) {
                          return ProgressIndicatorContainerComponent(
                            isSelected: index <= state.progressIndicatorIndex
                          );
                        }),
                      ),
                    ),

                    Expanded(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                        child: state.currentPage
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
