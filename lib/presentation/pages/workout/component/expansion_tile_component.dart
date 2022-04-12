
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_splits_roadmap_model.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class ExpansionTileComponent extends StatefulWidget {

  final String title;
  final Map<String, List<WorkoutSplitsRoadmapItemModel>> items;

  const ExpansionTileComponent({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  @override
  _ExpansionTileComponentState createState() => _ExpansionTileComponentState();
}

class _ExpansionTileComponentState extends State<ExpansionTileComponent> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.items.length,
      itemBuilder: (context, i) {
        return _buildPlayerModelList(
          weekName: "${i + 1}",
          children: widget.items["${i + 1}"]
        );
      },
      separatorBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 30.w, left: 30.w),
          child: const Divider(
            color: AppColors.disabledColor,
            height: 1,
          ),
        );
      },
    );
  }

  Widget _buildPlayerModelList({
    required String weekName,
    required List<WorkoutSplitsRoadmapItemModel>? children,
  }) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 0),
        onExpansionChanged: (bool expanded) {
          setState(() => _customTileExpanded = expanded);
        },
        backgroundColor: AppColors.white,
        collapsedIconColor: AppColors.primaryColor,
        iconColor: AppColors.primaryColor,
        trailing: Padding(
          padding: EdgeInsets.only(right: 30.w),
          child: SvgPicture.asset(
            _customTileExpanded ? AppIcons.arrowDropUp : AppIcons.arrowDropDown,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(right: 30.w, left: 30.w, top: 16.h),
          child: Text(
            "Week $weekName",
            style: AdaptiveTheme.of(context).theme.textTheme.headline3,
          ),
        ),
        children: [
          Container(
            padding: EdgeInsets.only(right: 30.w, left: 30.w),
            color: AppColors.grey,
            height: 472.h,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: children?.length ?? 0,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            AppRoutes.workoutDayDetail(
                                id: children![i].id,
                                title: widget.title + "_split".tr()));
                      },
                      child: Container(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Stack(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 16.h, left: 24),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Day ${children?[i].day}",
                                              style: AdaptiveTheme.of(context)
                                                  .theme
                                                  .textTheme
                                                  .headline4,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 21.w),
                                      Text(
                                        "Quads",
                                        style: AdaptiveTheme.of(context)
                                            .theme
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(right: 24.w),
                                      child: children?[i].percentage == 100
                                          ? SvgPicture.asset(
                                              AppIcons.checkCircleFilled,
                                              height: 36.r,
                                            )
                                          : CircularPercentIndicator(
                                              radius: 36.r,
                                              lineWidth: 3.0,
                                              percent: children![i]
                                                      .percentage
                                                      .toDouble() /
                                                  100,
                                              center: Text(
                                                "${children[i].percentage}%",
                                                style: AdaptiveTheme.of(context)
                                                    .theme
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(fontSize: 9.sp),
                                              ),
                                              progressColor:
                                                  AppColors.primaryColor,
                                              backgroundColor:
                                                  AppColors.disabledColor,
                                            )
                                      // Container(
                                      //   height: 36.h,
                                      //   width: 36.h,
                                      //   child: DecoratedBox(
                                      //     decoration: BoxDecoration(
                                      //       color: AppColors.white,
                                      //       borderRadius:
                                      //           BorderRadius.circular(18.r),
                                      //     ),
                                      //     child: Center(
                                      //       child: Text(
                                      //         "${children?[i].percentage}",
                                      //         style: TextStyle(
                                      //           color: AppColors.primaryColor
                                      //               .withOpacity(0.5),
                                      //           fontSize: 9,
                                      //           fontWeight: FontWeight.w400,
                                      //         ),
                                      //       ),
                                      //     ),
                                      //   ),
                                      //   decoration: BoxDecoration(
                                      //     borderRadius: BorderRadius.circular(18.r),
                                      //     border: Border.all(
                                      //       width: 4,
                                      //     ),
                                      //   ),
                                      // ),
                                      )
                                ],
                              ),
                            ],
                          ),
                        ),
                        height: 60.h,
                        decoration: BoxDecoration(
                          gradient: AppColors.linear2,
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
