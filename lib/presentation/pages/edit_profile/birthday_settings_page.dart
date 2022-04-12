
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/components/snack_bar_component.dart';
import 'package:fitness_uncensored/application/profile/profile_bloc.dart';
import 'package:fitness_uncensored/presentation/components/date_picker_component.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/components/text_field_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';

class BirthdaySettingsPage extends StatefulWidget {
  const BirthdaySettingsPage({Key? key}) : super(key: key);

  @override
  State<BirthdaySettingsPage> createState() => _BirthdaySettingsPageState();
}

class _BirthdaySettingsPageState extends State<BirthdaySettingsPage> {

  final TextEditingController _birthDayEditController = TextEditingController();

  @override
  void dispose() {
    _birthDayEditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.h),
          child: AppBarComponent(
            text: "birthday".tr(),
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
                        style: AdaptiveTheme.of(context).theme.textTheme.headline1,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'date_of_birth_'.tr(),
                            style: AdaptiveTheme.of(context).theme.textTheme.headline2,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 24.h),

                    TextFieldComponent(
                      hint: "date_of_birth".tr(),
                      showSuffixIcon: true,
                      textEditingController: _birthDayEditController,
                      suffixIconPath: AppIcons.calendarTodayOutlined,
                      onChanged: (value) {},
                      onTap: () => DatePickerComponent.datePicker(
                          context: context,
                          onSaveButtonPressed: (date) {
                            _birthDayEditController.text = date;
                          }
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
        bottomNavigationBar: MainButtonComponent(
          text: 'save'.tr(),
          margin: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 16.h),
          onPressed: () {
            context.read<ProfileBloc>().add(ProfileEvent.updateUserInfo(
              userInfo:  {
                "date_of_birth": DateFormat('yyyy-MM-dd').format(DateTime.parse(
                  _birthDayEditController.text
                )),
              }
            ));
          },
        ),
      ),
    );
  }
}
