import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness_uncensored/application/progress/photoBloc/photo_bloc_bloc.dart';
import 'package:fitness_uncensored/domain/progress/pages.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/utils/format_date.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PhotosPage extends StatefulWidget {
  const PhotosPage({Key? key}) : super(key: key);

  @override
  State<PhotosPage> createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  final RefreshController _refreshController = RefreshController();

  DateTime? dateTime;

  @override
  void initState() {
    context.read<PhotoBlocBloc>().add(const PhotoBlocEvent.getPhotoList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: const AppBarComponent(),
      ),
      body: BlocBuilder<PhotoBlocBloc, PhotoBlocState>(
        buildWhen: (context, state) =>
            state.currentPage == ProgressPages.listphoto,
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
                        "photos".tr(),
                        style:
                            AdaptiveTheme.of(context).theme.textTheme.headline1,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (Platform.isAndroid) {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2022),
                              lastDate: DateTime(2100),
                            ).then((value) {
                              setState(() {
                                dateTime = value;
                              });
                              context.read<PhotoBlocBloc>().add(
                                    PhotoBlocEvent.getPhotoFromDate(
                                        date: dateTime
                                            .toString()
                                            .substring(0, 10)),
                                  );
                            });
                          } else if (Platform.isIOS) {
                            CupertinoDatePicker(
                                onDateTimeChanged: (value) => setState(() {
                                      dateTime = value;
                                      context.read<PhotoBlocBloc>().add(
                                          PhotoBlocEvent.getPhotoFromDate(
                                              date: dateTime
                                                  .toString()
                                                  .substring(0, 10)));
                                    }));
                          }
                        },
                        child: SvgPicture.asset(AppIcons.dateRange),
                      ),
                    ],
                  ),
                  SizedBox(height: 32.h),
                  Expanded(
                      child: SmartRefresher(
                    enablePullDown: false,
                    enablePullUp: true,
                    header: const WaterDropMaterialHeader(
                      backgroundColor: AppColors.primaryColor,
                    ),
                    controller: _refreshController,
                    // onRefresh: _onRefresh,
                    onLoading: () {
                      context
                          .read<PhotoBlocBloc>()
                          .add(const PhotoBlocEvent.getNextPhotoListPage());
                      _refreshController.loadComplete();
                    },
                    child: state.getPhotoFromDateModel != null
                        ? state.getPhotoFromDateModel!.results.isEmpty
                            ? const SizedBox()
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FormatDate.mmDYear(
                                      date: state.getPhotoFromDateModel!.results
                                          .first.createdDttm
                                          .toString(),
                                    ),
                                    style: AdaptiveTheme.of(context)
                                        .theme
                                        .textTheme
                                        .headline4,
                                  ),
                                  SizedBox(height: 16.h),
                                  SizedBox(
                                    // height: 210.h,
                                    child: Row(
                                      children: [
                                        InkWell(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              AppRoutes.photoDetailSort(
                                                photo: state
                                                    .getPhotoFromDateModel!
                                                    .results
                                                    .first
                                                    .front,
                                                dropdown: "front",
                                                dateTime: state
                                                    .getPhotoFromDateModel!
                                                    .results
                                                    .first
                                                    .createdDttm
                                                    .toString(),
                                              ),
                                            );

                                            // SystemChrome
                                            //     .setPreferredOrientations([
                                            //   DeviceOrientation.portraitDown,
                                            //   DeviceOrientation.portraitUp,
                                            //   DeviceOrientation.landscapeLeft,
                                            //   DeviceOrientation.landscapeRight,
                                            // ]);
                                            setState(() {});
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 172.h,
                                                width: 97.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r),
                                                    child: CachedNetworkImage(
                                                      imageUrl: state
                                                          .getPhotoFromDateModel!
                                                          .results
                                                          .first
                                                          .front,
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              SizedBox(height: 12.h),
                                              Text(
                                                "front".tr(),
                                                style: AdaptiveTheme.of(context)
                                                    .theme
                                                    .textTheme
                                                    .bodyText2,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 8.w),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              AppRoutes.photoDetailSort(
                                                photo: state
                                                    .getPhotoFromDateModel!
                                                    .results
                                                    .first
                                                    .side,
                                                dropdown: "side",
                                                dateTime: state
                                                    .getPhotoFromDateModel!
                                                    .results
                                                    .first
                                                    .createdDttm
                                                    .toString(),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 172.h,
                                                width: 97.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r),
                                                    child: CachedNetworkImage(
                                                      imageUrl: state
                                                          .getPhotoFromDateModel!
                                                          .results
                                                          .first
                                                          .side,
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              SizedBox(height: 12.h),
                                              Text(
                                                "side".tr(),
                                                style: AdaptiveTheme.of(context)
                                                    .theme
                                                    .textTheme
                                                    .bodyText2,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 8.w),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              AppRoutes.photoDetailSort(
                                                photo: state
                                                    .getPhotoFromDateModel!
                                                    .results
                                                    .first
                                                    .back,
                                                dropdown: "back",
                                                dateTime: state
                                                    .getPhotoFromDateModel!
                                                    .results
                                                    .first
                                                    .createdDttm
                                                    .toString(),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 172.h,
                                                width: 97.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r),
                                                    child: CachedNetworkImage(
                                                      imageUrl: state
                                                          .getPhotoFromDateModel!
                                                          .results
                                                          .first
                                                          .back,
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              SizedBox(height: 12.h),
                                              Text(
                                                "back".tr(),
                                                style: AdaptiveTheme.of(context)
                                                    .theme
                                                    .textTheme
                                                    .bodyText2,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                        : ListView.separated(
                            itemCount: state.getListPhotoModel!.results.length,
                            separatorBuilder: (context, index) {
                              return Column(
                                children: [
                                  SizedBox(height: 12.h),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                  SizedBox(height: 12.h),
                                ],
                              );
                            },
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FormatDate.mmDYear(
                                      date: state.getListPhotoModel!
                                          .results[index].createdDttm
                                          .toString(),
                                    ),
                                    style: AdaptiveTheme.of(context)
                                        .theme
                                        .textTheme
                                        .headline4,
                                  ),
                                  SizedBox(height: 16.h),
                                  SizedBox(
                                    // height: 210.h,
                                    child: Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              AppRoutes.photoDetailSort(
                                                photo: state.getListPhotoModel!
                                                    .results[index].front,
                                                dropdown: "front",
                                                dateTime: state
                                                    .getListPhotoModel!
                                                    .results[index]
                                                    .createdDttm
                                                    .toString(),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 172.h,
                                                width: 97.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r),
                                                    child: CachedNetworkImage(
                                                      imageUrl: state
                                                          .getListPhotoModel!
                                                          .results[index]
                                                          .front,
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              SizedBox(height: 12.h),
                                              Text(
                                                "front".tr(),
                                                style: AdaptiveTheme.of(context)
                                                    .theme
                                                    .textTheme
                                                    .bodyText2,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 8.w),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              AppRoutes.photoDetailSort(
                                                photo: state.getListPhotoModel!
                                                    .results[index].side,
                                                dropdown: "side",
                                                dateTime: state
                                                    .getListPhotoModel!
                                                    .results[index]
                                                    .createdDttm
                                                    .toString(),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 172.h,
                                                width: 97.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r),
                                                    child: CachedNetworkImage(
                                                      imageUrl: state
                                                          .getListPhotoModel!
                                                          .results[index]
                                                          .side,
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              SizedBox(height: 12.h),
                                              Text(
                                                "side".tr(),
                                                style: AdaptiveTheme.of(context)
                                                    .theme
                                                    .textTheme
                                                    .bodyText2,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 8.w),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              AppRoutes.photoDetailSort(
                                                photo: state.getListPhotoModel!
                                                    .results[index].back,
                                                dropdown: "back",
                                                dateTime: state
                                                    .getListPhotoModel!
                                                    .results[index]
                                                    .createdDttm
                                                    .toString(),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 172.h,
                                                width: 97.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r),
                                                    child: CachedNetworkImage(
                                                      imageUrl: state
                                                          .getListPhotoModel!
                                                          .results[index]
                                                          .back,
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              SizedBox(height: 12.h),
                                              Text(
                                                "back".tr(),
                                                style: AdaptiveTheme.of(context)
                                                    .theme
                                                    .textTheme
                                                    .bodyText2,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                  )),
                  SizedBox(height: 16.h),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
