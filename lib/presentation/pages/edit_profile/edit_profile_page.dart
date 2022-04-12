import 'package:enum_to_string/enum_to_string.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitness_uncensored/presentation/components/snack_bar_component.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/application/profile/profile_bloc.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

import 'package:fitness_uncensored/presentation/components/profile_avatar_component.dart';
import 'package:fitness_uncensored/presentation/components/text_field_component.dart';
import 'package:fitness_uncensored/presentation/components/gender_component.dart';
import 'package:fitness_uncensored/domain/user/gender_type.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _profileAvatar = '', _name = '', _secondName = '';
  GenderType _genderType = GenderType.male;

  @override
  void initState() {
    _profileAvatar =
        context.read<ProfileBloc>().state.profile?.profileImage?.file ?? '';
    _name = context.read<ProfileBloc>().state.profile?.firstName ?? '';
    _secondName = context.read<ProfileBloc>().state.profile?.lastName ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state.hasError) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBarComponent.errorSnackBar(message: state.error));
        } else if (state.isUpdatedUserInfo) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBarComponent.successSnackBar(
                  message: "your_info_updated".tr()));

          context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Material(
            color: AppColors.white,
            child: AppLoadingComponent(),
          );
        } else {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(56.h),
                child: AppBar(
                  foregroundColor: AppColors.primaryColor,
                  title: Text(
                    "edit_profile".tr(),
                    style: AdaptiveTheme.of(context)
                        .theme
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  centerTitle: true,
                  backgroundColor: AppColors.white,
                  elevation: 4,
                  shadowColor: AppColors.white.withOpacity(0.4),
                ),
              ),
              body: Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "photo".tr(),
                        style:
                            AdaptiveTheme.of(context).theme.textTheme.headline4,
                      ),
                      SizedBox(height: 24.h),
                      ProfileAvatarComponent(
                        initAvatarPhoto: context
                                .read<ProfileBloc>()
                                .state
                                .profile
                                ?.profileImage
                                ?.file ??
                            '',
                        onProfileChanged: (profile) => _profileAvatar = profile,
                      ),
                      SizedBox(height: 38.h),
                      TextFieldComponent(
                        hint: "name".tr(),
                        initialValue: _name,
                        onChanged: (value) => _name = value,
                      ),
                      SizedBox(height: 16.h),
                      TextFieldComponent(
                        hint: "second_name".tr(),
                        initialValue: _secondName,
                        onChanged: (value) => _secondName = value,
                      ),
                      SizedBox(height: 24.h),
                      GenderComponent(
                        genderType: _genderType,
                        onChanged: (gender) =>
                            setState(() => _genderType = gender),
                      ),
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: MainButtonComponent(
                text: 'save'.tr(),
                margin: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 16.h),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context
                        .read<ProfileBloc>()
                        .add(ProfileEvent.updateUserInfo(userInfo: {
                          "profile_image": _profileAvatar,
                          "first_name": _name,
                          "last_name": _secondName,
                          "gender": EnumToString.convertToString(_genderType)
                        }));
                  }
                },
              ),
            ),
          );
        }
      },
    );
  }
}
