import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness_uncensored/application/progress/photoBloc/photo_bloc_bloc.dart';
import 'package:fitness_uncensored/domain/progress/pages.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/utils/format_date.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
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
          } else if (state.hasError) {
            return ErrorComponent(errorMessage: state.error);
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
                      SvgPicture.asset(AppIcons.dateRange),
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
                    child: ListView.separated(
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
                                date: state.getListPhotoModel!.results[index]
                                    .createdDttm
                                    .toString(),
                              ),
                              style: AdaptiveTheme.of(context)
                                  .theme
                                  .textTheme
                                  .headline4,
                            ),
                            SizedBox(height: 16.h),
                            SizedBox(
                              height: 172.h,
                              child: Row(
                                children: [
                                  Container(
                                    height: 172.h,
                                    width: 97.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.r)),
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        child: CachedNetworkImage(
                                          imageUrl: state.getListPhotoModel!
                                              .results[index].front,
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  SizedBox(width: 8.w),
                                  Container(
                                    height: 172.h,
                                    width: 97.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.r)),
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        child: CachedNetworkImage(
                                          imageUrl: state.getListPhotoModel!
                                              .results[index].side,
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  SizedBox(width: 8.w),
                                  Container(
                                    height: 172.h,
                                    width: 97.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.r)),
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        child: CachedNetworkImage(
                                          imageUrl: state.getListPhotoModel!
                                              .results[index].back,
                                          fit: BoxFit.cover,
                                        )),
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
