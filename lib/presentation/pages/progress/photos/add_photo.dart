import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/application/progress/photoBloc/photo_bloc_bloc.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/snack_bar_component.dart';
import 'package:fitness_uncensored/presentation/pages/progress/components/rectangle_photo.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPhotoPage extends StatefulWidget {
  const AddPhotoPage({Key? key}) : super(key: key);

  @override
  State<AddPhotoPage> createState() => _AddPhotoPageState();
}

class _AddPhotoPageState extends State<AddPhotoPage> {
  final List<String> imagePicked = ['', '', ''];

  final List<String> photoExample = [
    AppIcons.front,
    AppIcons.side,
    AppIcons.back,
  ];

  String a = '';

  @override
  void initState() {
    a.contains('https');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.h),
          child: AppBarComponent(
            onRightButtonPressed: () {
              Navigator.push(context, AppRoutes.helpPhoto());
            },
            iconPath: AppIcons.liveHelpFilled,
          ),
        ),
        body: BlocConsumer<PhotoBlocBloc, PhotoBlocState>(
          listener: (context, state) {
            if (state.hasError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBarComponent.errorSnackBar(message: state.error),
              );

              Navigator.pushAndRemoveUntil(
                context,
                AppRoutes.main(),
                (route) => false,
              );

              // context
              //     .read<ProgressBloc>()
              //     .add(const ProgressEvent.getPhotoList(id: 1));

            } else if (state.update) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBarComponent.successSnackBar(
                  message: "your_info_updated".tr(),
                ),
              );

              // context
              //     .read<ProgressBloc>()
              //     .add(const ProgressEvent.getPhotoList(id: 1));

              Navigator.pushAndRemoveUntil(
                context,
                AppRoutes.main(),
                (route) => false,
              );
            }
          },
          builder: (context, state) {
            if (state.isLoading) {
              return const AppLoadingComponent();
            } else {
              return Padding(
                padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 16.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "add_photo".tr(),
                          style: AdaptiveTheme.of(context)
                              .theme
                              .textTheme
                              .headline1,
                        ),
                        Text(
                          "Nov 14, 2021".tr(),
                          style: AdaptiveTheme.of(context)
                              .theme
                              .textTheme
                              .headline4,
                        ),
                      ],
                    ),
                    SizedBox(height: 32.h),
                    Expanded(
                        child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (_, index) => Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: RectanglePhoto(
                          photoIcon: photoExample[index],
                          onChanged: (value) => imagePicked[index] = value,
                        ),
                      ),
                    )),
                  ],
                ),
              );
            }
          },
        ),
        bottomNavigationBar: MainButtonComponent(
          margin: EdgeInsets.only(bottom: 16.h, right: 30.w, left: 30.w),
          text: 'save'.tr(),
          onPressed: () {
            if (imagePicked[0].isNotEmpty &&
                imagePicked[1].isNotEmpty &&
                imagePicked[2].isNotEmpty) {
              context.read<PhotoBlocBloc>().add(
                    PhotoBlocEvent.addPhoto(
                      front: imagePicked[0],
                      side: imagePicked[1],
                      back: imagePicked[2],
                    ),
                  );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBarComponent.errorSnackBar(
                      message: "please_fill_in_3_pictures".tr()));
            }
          },
        ),
      ),
    );
  }
}
