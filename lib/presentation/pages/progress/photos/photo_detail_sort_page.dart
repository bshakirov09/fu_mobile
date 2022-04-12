import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/application/progress/photoBloc/photo_bloc_bloc.dart';
import 'package:fitness_uncensored/domain/progress/pages.dart';
import 'package:fitness_uncensored/presentation/components/cached_image_component.dart';
import 'package:fitness_uncensored/presentation/components/gradient_button_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/utils/format_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PhotoDetailSortPage extends StatefulWidget {
  final String photo;
  final String dropdown;
  final String dateTime;

  const PhotoDetailSortPage({
    required this.dropdown,
    required this.photo,
    required this.dateTime,
    Key? key,
  }) : super(key: key);

  @override
  _PhotoDetailSortPageState createState() => _PhotoDetailSortPageState();
}

class _PhotoDetailSortPageState extends State<PhotoDetailSortPage> {
  bool isUpdatePhotoLeft = false;
  bool isUpdatePhotoRight = false;
  String? dropdownValue;

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }

  @override
  void initState() {
    // context.read<PhotoBlocBloc>().add(
    //       PhotoBlocEvent.detailViewPhoto(
    //         direction: "back",
    //         currentDate: widget.dateTime.substring(0, 10),
    //       ),
    //     );
    super.initState();
    dropdownValue = widget.dropdown;
  }

  // List<String> fronSideBack = [
  //   "front",
  //   "side",
  //   "back",
  // ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      // DeviceOrientation.landscapeRight,
    ]);
    return BlocConsumer<PhotoBlocBloc, PhotoBlocState>(
      buildWhen: (context, state) =>
          state.currentPage == ProgressPages.detailSortPhoto,
      listener: (context, state) {
        if (state.isUpdateDetailPhotoRight == true) {
          isUpdatePhotoRight = true;
        } else if (state.isUpdateDetailPhotoLeft == true) {
          isUpdatePhotoLeft = true;
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.primaryColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(56.h),
            child: AppBar(
              backgroundColor: AppColors.primaryColor,
              foregroundColor: AppColors.white,
              centerTitle: true,
              title: DropdownButton<String>(
                dropdownColor: AppColors.primaryColor,
                autofocus: true,
                value: dropdownValue,
                icon: SvgPicture.asset(
                  AppIcons.arrowDropDown,
                  color: AppColors.white,
                ),
                // elevation: 16,
                style: const TextStyle(color: AppColors.white),
                underline: const SizedBox(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    context.read<PhotoBlocBloc>()
                      ..add(PhotoBlocEvent.detailViewPhotoLeft(
                          direction: newValue,
                          currentDate: isUpdatePhotoLeft
                              ? state.detailViewPhotoLeftModel!.createdDttm
                                  .toString()
                              : widget.dateTime))
                      ..add(PhotoBlocEvent.detailViewPhotoRight(
                          direction: newValue,
                          currentDate: isUpdatePhotoRight
                              ? state.detailViewPhotoRightModel!.createdDttm
                                  .toString()
                              : widget.dateTime));
                  }
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },

                items: <String>[
                  'front',
                  'side',
                  'back',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GradientButtonComponent(
                        onPressed: () {
                          context.read<PhotoBlocBloc>().add(
                                PhotoBlocEvent.detailViewPhotoLeft(
                                  direction: "next",
                                  currentDate: isUpdatePhotoLeft
                                      ? state
                                          .detailViewPhotoLeftModel!.createdDttm
                                          .toString()
                                          .substring(0, 10)
                                      : widget.dateTime.substring(0, 10),
                                ),
                              );
                        },
                        buttonSize: 47.h,
                        iconPath: AppIcons.arrowBack,
                        isPhotoDetailButton: true,
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      GradientButtonComponent(
                        onPressed: () {
                          context.read<PhotoBlocBloc>().add(
                                PhotoBlocEvent.detailViewPhotoLeft(
                                  direction: "back",
                                  currentDate: isUpdatePhotoLeft
                                      ? state
                                          .detailViewPhotoLeftModel!.createdDttm
                                          .toString()
                                          .substring(0, 10)
                                      : widget.dateTime.substring(0, 10),
                                ),
                              );
                        },
                        buttonSize: 47.h,
                        iconPath: AppIcons.arrowForward,
                        isPhotoDetailButton: true,
                      ),
                    ],
                  ),
                  SizedBox(width: 24.w),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.w),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CachedImageComponent(
                          height: double.infinity,
                          width: 70.w,
                          imageUrl: dropdownValue == "front"
                              ? isUpdatePhotoLeft
                                  ? state.detailViewPhotoLeftModel?.front ?? ""
                                  : widget.photo
                              : dropdownValue == "side"
                                  ? isUpdatePhotoLeft
                                      ? state.detailViewPhotoLeftModel?.side ??
                                          ""
                                      : widget.photo
                                  : isUpdatePhotoLeft
                                      ? state.detailViewPhotoLeftModel?.back ??
                                          ""
                                      : widget.photo,
                          borderRadius: 20.r,
                        ),
                        Container(
                          height: 36.h,
                          width: 70.w,
                          color: AppColors.primaryColor.withOpacity(0.22),
                          child: Text(
                            FormatDate.mmDYear(
                              date: isUpdatePhotoLeft
                                  ? state.detailViewPhotoLeftModel!.createdDttm
                                      .toString()
                                  : widget.dateTime,
                            ),
                            textAlign: TextAlign.center,
                            style: AdaptiveTheme.of(context)
                                .theme
                                .textTheme
                                .caption!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(width: 36.w),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.w),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CachedImageComponent(
                          height: double.infinity,
                          width: 70.w,
                          imageUrl: dropdownValue == "front"
                              ? isUpdatePhotoRight
                                  ? state.detailViewPhotoRightModel?.front ?? ""
                                  : widget.photo
                              : dropdownValue == "side"
                                  ? isUpdatePhotoRight
                                      ? state.detailViewPhotoRightModel?.side ??
                                          ""
                                      : widget.photo
                                  : isUpdatePhotoRight
                                      ? state.detailViewPhotoRightModel?.back ??
                                          ""
                                      : widget.photo,
                          borderRadius: 20.r,
                        ),
                        Container(
                          height: 36.h,
                          width: 70.w,
                          color: AppColors.primaryColor.withOpacity(0.22),
                          child: Text(
                            FormatDate.mmDYear(
                              date: isUpdatePhotoRight
                                  ? state.detailViewPhotoRightModel?.createdDttm
                                          .toString() ??
                                      ""
                                  : widget.dateTime,
                            ),
                            textAlign: TextAlign.center,
                            style: AdaptiveTheme.of(context)
                                .theme
                                .textTheme
                                .caption!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 24.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GradientButtonComponent(
                        onPressed: () {
                          context.read<PhotoBlocBloc>().add(
                                PhotoBlocEvent.detailViewPhotoRight(
                                  direction: "next",
                                  currentDate: isUpdatePhotoRight
                                      ? state.detailViewPhotoRightModel!
                                          .createdDttm
                                          .toString()
                                          .substring(0, 10)
                                      : widget.dateTime.substring(0, 10),
                                ),
                              );
                        },
                        buttonSize: 47.h,
                        iconPath: AppIcons.arrowBack,
                        isPhotoDetailButton: true,
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      GradientButtonComponent(
                        onPressed: () {
                          context.read<PhotoBlocBloc>().add(
                                PhotoBlocEvent.detailViewPhotoRight(
                                  direction: "back",
                                  currentDate: isUpdatePhotoRight
                                      ? state.detailViewPhotoRightModel!
                                          .createdDttm
                                          .toString()
                                          .substring(0, 10)
                                      : widget.dateTime.substring(0, 10),
                                ),
                              );
                        },
                        buttonSize: 47.h,
                        iconPath: AppIcons.arrowForward,
                        isPhotoDetailButton: true,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  // functionCheck(String name) {
  //   switch (name) {
  //     case "front":
  //       return "front";

  //     case "side":
  //       return "side";

  //     case "back":
  //       return "back";

  //     default:
  //       return "front";
  //   }
  // }
}
