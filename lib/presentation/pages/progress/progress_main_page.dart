import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness_uncensored/application/progress/bloc/progress_bloc.dart';
import 'package:fitness_uncensored/application/progress/journalBloc/journal_bloc.dart';
import 'package:fitness_uncensored/application/progress/photoBloc/photo_bloc_bloc.dart';
import 'package:fitness_uncensored/domain/progress/pages.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/pages/progress/multi_level_labels.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/utils/format_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/svg.dart';

class ProgressMainPage extends StatefulWidget {
  const ProgressMainPage({Key? key}) : super(key: key);

  @override
  _ProgressMainPageState createState() => _ProgressMainPageState();
}

class _ProgressMainPageState extends State<ProgressMainPage> {
  String dropdownValue = 'monthly'.tr();

  @override
  void initState() {
    super.initState();
    context
        .read<ProgressBloc>()
        .add(ProgressEvent.getWeight(duration: dropdownValue));
    context.read<PhotoBlocBloc>().add(const PhotoBlocEvent.getPhotoList());
    context.read<JournalBloc>().add(const JournalEvent.getJournalList());
  }

  bool isVisible = false;
  // bool isVisibleFilter = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.h),
          child: AppBarComponent(
            main: true,
            iconPath: AppIcons.calculator,
            preIconText: 'calculator'.tr(),
          ),
        ),
        body: Stack(
          alignment: Alignment.bottomRight,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.w,
                      right: 30.w,
                      top: 16.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "progress".tr(),
                          style: AdaptiveTheme.of(context)
                              .theme
                              .textTheme
                              .headline1,
                        ),
                        DropdownButton<String>(
                          dropdownColor: AppColors.white,
                          onTap: () {
                            setState(() {
                              dropdownValue;
                            });
                          },
                          autofocus: true,
                          value: dropdownValue,
                          // icon: SvgPicture.asset(
                          //   AppIcons.arrowDropDown,
                          //   color: AppColors.white,
                          // ),
                          // elevation: 16,
                          style: AdaptiveTheme.of(context)
                              .theme
                              .textTheme
                              .headline4!
                              .copyWith(fontSize: 14.sp, color: AppColors.blue),
                          underline: const SizedBox(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                              context.read<ProgressBloc>().add(
                                    ProgressEvent.getWeight(
                                      duration: dropdownValue,
                                    ),
                                  );
                            });
                          },
                          items: <String>[
                            'weekly'.tr(),
                            'monthly'.tr(),
                            'yearly'.tr(),
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.w,
                      right: 30.w,
                    ),
                    child: Container(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.grey,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: BlocBuilder<ProgressBloc, ProgressState>(
                          buildWhen: (context, state) =>
                              state.currentPage == ProgressPages.listweight,
                          builder: (context, state) {
                            if (state.isLoading) {
                              return const Center(child: AppLoadingComponent());
                            } else {
                              return MultiLevelLabelsSample(
                                weight: state.weight,
                              );
                            }
                          },
                        ),
                      ),
                      height: 205.h,
                      decoration: BoxDecoration(
                        gradient: AppColors.linear2,
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.w,
                      right: 30.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "progress_by_photo".tr(),
                          style: AdaptiveTheme.of(context)
                              .theme
                              .textTheme
                              .headline4,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, AppRoutes.getPhotos());
                          },
                          child: Text(
                            "other_photos".tr(),
                            style: AdaptiveTheme.of(context)
                                .theme
                                .textTheme
                                .headline4!
                                .copyWith(
                                    fontSize: 14.sp, color: AppColors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  BlocBuilder<PhotoBlocBloc, PhotoBlocState>(
                    buildWhen: (context, state) =>
                        state.currentPage == ProgressPages.listphoto,
                    builder: (context, state) {
                      if (state.isLoading) {
                        return SizedBox(
                            height: 120.h,
                            child: const Center(child: AppLoadingComponent()));
                      }
                      // else if (state.hasError) {
                      //   return ErrorComponent(errorMessage: state.error);
                      // }
                      else {
                        return state.getListPhotoModel!.results.isEmpty
                            ? Padding(
                                padding: EdgeInsets.only(
                                  left: 30.w,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context, AppRoutes.addPhoto());
                                  },
                                  child: Container(
                                    height: 120.h,
                                    width: 126.w,
                                    decoration: BoxDecoration(
                                      color: AppColors.grey,
                                      borderRadius: BorderRadius.circular(20.r),
                                      border: Border.all(
                                        color: AppColors.disabledColor,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50.w, vertical: 48.h),
                                      child: SvgPicture.asset(
                                        AppIcons.add,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : Padding(
                                padding: EdgeInsets.only(
                                  left: 30.w,
                                ),
                                child: SizedBox(
                                  height: 120.h,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    separatorBuilder: (context, i) {
                                      return SizedBox(
                                        width: 8.w,
                                      );
                                    },
                                    scrollDirection: Axis.horizontal,
                                    itemCount: state.getListPhotoModel!.results
                                                .length >
                                            5
                                        ? 5
                                        : state
                                            .getListPhotoModel!.results.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        height: 120.h,
                                        width: 126.w,
                                        decoration: BoxDecoration(
                                            color: AppColors.grey,
                                            borderRadius:
                                                BorderRadius.circular(20.r),
                                            border: Border.all(
                                              width: 1,
                                              color: AppColors.disabledColor,
                                            )),
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(top: 5.h),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 78.h,
                                                      width: 37.w,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        20.r)),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl: state
                                                              .getListPhotoModel!
                                                              .results[index]
                                                              .front,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 2.5.w),
                                                    SizedBox(
                                                      height: 78.h,
                                                      width: 37.w,
                                                      child: ClipRRect(
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl: state
                                                              .getListPhotoModel!
                                                              .results[index]
                                                              .side,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 2.5.w),
                                                    SizedBox(
                                                      height: 78.h,
                                                      width: 37.w,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        20.r)),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl: state
                                                              .getListPhotoModel!
                                                              .results[index]
                                                              .back,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10.h),
                                            Text(
                                              FormatDate.mmDYear(
                                                date: state.getListPhotoModel!
                                                    .results[index].createdDttm
                                                    .toString(),
                                              ),
                                              style: AdaptiveTheme.of(context)
                                                  .theme
                                                  .textTheme
                                                  .bodyText2,
                                            ),
                                            SizedBox(height: 9.h),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              );
                      }
                    },
                  ),
                  SizedBox(height: 32.h),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.w,
                      right: 30.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "journal".tr(),
                          style: AdaptiveTheme.of(context)
                              .theme
                              .textTheme
                              .headline4,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              AppRoutes.allJournal(),
                            );
                          },
                          child: Text(
                            "other_notes".tr(),
                            style: AdaptiveTheme.of(context)
                                .theme
                                .textTheme
                                .headline4!
                                .copyWith(
                                    fontSize: 14.sp, color: AppColors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  BlocBuilder<JournalBloc, JournalState>(
                      buildWhen: (context, state) =>
                          state.currentPage == ProgressPages.listjournal,
                      builder: (context, state) {
                        if (state.isLoading) {
                          return SizedBox(
                              height: 134.h,
                              child:
                                  const Center(child: AppLoadingComponent()));
                        }
                        // else if (state.hasError) {
                        //   return ErrorComponent(errorMessage: state.error);
                        // }
                        else {
                          return state.getJournalList!.results.isEmpty
                              ? Padding(
                                  padding: EdgeInsets.only(
                                    left: 30.w,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context, AppRoutes.addNewNotes());
                                    },
                                    child: Container(
                                      height: 174.h,
                                      width: 197.w,
                                      decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        border: Border.all(
                                            color: AppColors.primaryColor),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 50.w, vertical: 48.h),
                                        child: SvgPicture.asset(
                                          AppIcons.add,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: EdgeInsets.only(
                                    left: 30.w,
                                  ),
                                  child: SizedBox(
                                    height: 134.h,
                                    child: ListView.separated(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                AppRoutes.noteSingle(
                                                    id: state.getJournalList!
                                                        .results[index].id));
                                          },
                                          child: Container(
                                            height: 134.h,
                                            width: 197.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                              border: Border.all(
                                                color: AppColors.primaryColor,
                                              ),
                                              // boxShadow: [
                                              //   BoxShadow(
                                              //     color: AppColors
                                              //         .primaryColor
                                              //         .withOpacity(0.07),
                                              //     offset: const Offset(0, 4),
                                              //     blurRadius: 9,
                                              //   )
                                              // ]
                                            ),
                                            child: Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20.r),
                                                    topRight:
                                                        Radius.circular(20.r),
                                                  ),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 37.h,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        top: 8.h,
                                                        bottom: 5.h,
                                                      ),
                                                      child: Text(
                                                        FormatDate.mmDYear(
                                                            date: state
                                                                .getJournalList!
                                                                .results[index]
                                                                .createdDttm
                                                                .toString()),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AdaptiveTheme.of(
                                                                context)
                                                            .theme
                                                            .textTheme
                                                            .caption,
                                                      ),
                                                    ),
                                                    color:
                                                        AppColors.primaryColor,
                                                  ),
                                                ),
                                                Container(
                                                  height: 2.h,
                                                  color:
                                                      AppColors.secondaryColor,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 16.w,
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(height: 8.h),
                                                          Text(
                                                            "Mood: " +
                                                                state
                                                                    .getJournalList!
                                                                    .results[
                                                                        index]
                                                                    .mood
                                                                    .tr(),
                                                            style: AdaptiveTheme
                                                                    .of(context)
                                                                .theme
                                                                .textTheme
                                                                .bodyText2,
                                                          ),
                                                          SizedBox(height: 8.h),
                                                          Text(
                                                            "Sleep: " +
                                                                state
                                                                    .getJournalList!
                                                                    .results[
                                                                        index]
                                                                    .digestion
                                                                    .tr(),
                                                            style: AdaptiveTheme
                                                                    .of(context)
                                                                .theme
                                                                .textTheme
                                                                .bodyText2,
                                                          ),
                                                          SizedBox(height: 8.h),
                                                          Text(
                                                            "Intensity: " +
                                                                state
                                                                    .getJournalList!
                                                                    .results[
                                                                        index]
                                                                    .intensityRate
                                                                    .tr(),
                                                            style: AdaptiveTheme
                                                                    .of(context)
                                                                .theme
                                                                .textTheme
                                                                .bodyText2,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index) {
                                        return SizedBox(width: 16.w);
                                      },
                                      itemCount:
                                          state.getJournalList!.results.length >
                                                  5
                                              ? 5
                                              : state.getJournalList!.results
                                                  .length,
                                    ),
                                  ),
                                );
                        }
                      }),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: isVisible ? 1.0 : 0.0,
              child: Visibility(
                  visible: isVisible,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 100.h, right: 30.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, AppRoutes.addPhoto());
                              },
                              child: Container(
                                width: 205.w,
                                height: 48.h,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                child: Center(
                                  child: Text(
                                    "add_photo".tr(),
                                    style: AdaptiveTheme.of(context)
                                        .theme
                                        .textTheme
                                        .caption,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 16.h),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context, AppRoutes.addWeightProgress());
                              },
                              child: Container(
                                width: 211.w,
                                height: 48.h,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                child: Center(
                                  child: Text(
                                    "add_weight".tr(),
                                    style: AdaptiveTheme.of(context)
                                        .theme
                                        .textTheme
                                        .caption,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 16.h),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context, AppRoutes.addNewNotes());
                              },
                              child: Container(
                                width: 230.w,
                                height: 48.h,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                child: Center(
                                  child: Text(
                                    "add_new_note".tr(),
                                    style: AdaptiveTheme.of(context)
                                        .theme
                                        .textTheme
                                        .caption,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0.0,
          backgroundColor: AppColors.primaryColor,
          onPressed: () => setState(() {
            isVisible = !isVisible;
          }),
          child: isVisible
              ? SvgPicture.asset(
                  AppIcons.close,
                  color: AppColors.white,
                )
              : SvgPicture.asset(
                  AppIcons.add,
                  color: AppColors.white,
                ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16.0.r),
            ),
          ),
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.sales);

  final double sales;
}
