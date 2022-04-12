
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/application/profile/profile_bloc.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/components/snack_bar_component.dart';
import 'package:fitness_uncensored/presentation/components/text_field_component.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';

class HeightSettingsPage extends StatefulWidget {
  const HeightSettingsPage({Key? key}) : super(key: key);

  @override
  State<HeightSettingsPage> createState() => _HeightSettingsPageState();
}

class _HeightSettingsPageState extends State<HeightSettingsPage> {
  String _heightFeet = '', _heightInch = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.h),
          child: AppBarComponent(
            text: "height".tr(),
          ),
        ),
        body: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            if (state.isUpdatedUserInfo) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBarComponent.successSnackBar(
                  message: "your_info_updated".tr()
                )
              );

              context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            if (state.isLoading) {
              return const AppLoadingComponent();
            }
            else if (state.hasError) {
              return Center(
                child: ErrorComponent(
                  errorMessage: state.error,
                ),
              );
            }
            else {
              return Padding(
                padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 22.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'enter_your'.tr(),
                        style:
                            AdaptiveTheme.of(context).theme.textTheme.headline1,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'height_'.tr(),
                            style: AdaptiveTheme.of(context).theme.textTheme.headline2,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 24.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextFieldComponent(
                            inputType: TextInputType.number,
                            hint: "height_feet".tr(),
                            onChanged: (value) => _heightFeet = value,
                          ),
                        ),

                        SizedBox(width: 11.w),

                        Expanded(
                          child: TextFieldComponent(
                            inputType: TextInputType.number,
                            hint: "height_inch".tr(),
                            onChanged: (value) => _heightInch = value,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }
          },
        ),
        bottomNavigationBar: MainButtonComponent(
          margin: EdgeInsets.only(bottom: 60.h, right: 30.w, left: 30.w),
          text: 'save'.tr(),
          onPressed: () {
            context.read<ProfileBloc>().add(ProfileEvent.updateUserInfo(
              userInfo:  {
                "height": double.parse(_heightFeet) * 12 + double.parse(_heightInch),
              }
            ));
          },
        ),
      ),
    );
  }
}
