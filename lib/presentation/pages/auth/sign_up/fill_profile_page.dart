// Created by Muhammed Tolkinov on 09-December-2021

import 'package:fitness_uncensored/presentation/components/snack_bar_component.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitness_uncensored/application/auth/sign_up/sign_up_bloc.dart';
import 'package:fitness_uncensored/presentation/components/date_picker_component.dart';
import 'package:fitness_uncensored/presentation/components/profile_avatar_component.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/components/text_field_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';

class FillProfilePage extends StatefulWidget {
  const FillProfilePage({Key? key}) : super(key: key);

  @override
  State<FillProfilePage> createState() => _FillProfilePageState();
}

class _FillProfilePageState extends State<FillProfilePage> {

  final TextEditingController _birthDayEditController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _heightFeet = '', _heightInch = '';
  String _weight = '', _profilePhoto = '';

  void _fillProfile() {
    if (_profilePhoto.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBarComponent.errorSnackBar(
          message: 'please_select_your_profile_avatar'.tr()
        )
      );
    }
    else if (_formKey.currentState!.validate()) {
      context.read<SignUpBloc>().add(SignUpEvent.fillProfile(
        userInfo: {
          "profile_image": _profilePhoto,
          "height": int.parse(_heightFeet) * 12 + int.parse(_heightInch),
          "weight": _weight,
          "date_of_birth": DateFormat('yyyy-MM-dd').format(DateTime.parse(
            _birthDayEditController.text
          )),
        }
      ));
    }
  }

  @override
  void dispose() {
    _birthDayEditController.dispose();
    super.dispose();
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
              'photo'.tr(),
              style: AdaptiveTheme.of(context).theme.textTheme.headline4,
            ),

            SizedBox(height: 24.h),

            ProfileAvatarComponent(
              onProfileChanged: (profile) => _profilePhoto = profile,
            ),

            SizedBox(height: 24.h),

            TextFieldComponent(
              hint: "date_of_birth".tr(),
              textEditingController: _birthDayEditController,
              showSuffixIcon: true,
              suffixIconPath: AppIcons.calendarTodayOutlined,
              onChanged: (value) {},
              onTap: () => DatePickerComponent.datePicker(
                context: context,
                onSaveButtonPressed: (date) {
                  _birthDayEditController.text = date;
                }
              ),
            ),

            SizedBox(height: 16.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextFieldComponent(
                    hint: "height_feet".tr(),
                    inputType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'this_field_can_not_be_empty'.tr();
                      }
                      else {
                        return null;
                      }
                    },
                    onChanged: (value) => _heightFeet = value,
                  ),
                ),

                SizedBox(width: 11.w),

                Expanded(
                  child: TextFieldComponent(
                    hint: "height_inch".tr(),
                    inputType: TextInputType.number,
                    maxLength: 2,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'this_field_can_not_be_empty'.tr();
                      }
                      else if (int.parse(value) > 11) {
                        return 'inch_can_not_be_more_than_11'.tr();
                      }
                      else {
                        return null;
                      }
                    },
                    onChanged: (value) => _heightInch = value,
                  ),
                ),
              ],
            ),

            SizedBox(height: 16.h),

            TextFieldComponent(
              hint: "weight_lBs".tr(),
              inputType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'this_field_can_not_be_empty'.tr();
                }
                else {
                  return null;
                }
              },
              onChanged: (value) => _weight = value,
            ),

            const Spacer(),

            MainButtonComponent(
              text: 'continue'.tr(),
              margin: EdgeInsets.only(top: 14.h, bottom: 27.h),
              onPressed: _fillProfile,
            ),
          ],
        ),
      ),
    );
  }
}
