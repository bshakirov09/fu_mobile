import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_splits_roadmap_model.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ExpansionTileComponent extends StatefulWidget {
  final String title;
  final Map<String, List<WorkoutSplitsRoadmapItemModel>> items;
  final int id;
  const ExpansionTileComponent({
    Key? key,
    required this.title,
    required this.items,
    required this.id,
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
          children: widget.items["${i + 1}"],
        );
      },
      separatorBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 30.w, left: 30.w),
          child: Divider(
            color: AppColors.disabledColor,
            height: 1.h,
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
            style: AdaptiveTheme.of(context)
                .theme
                .textTheme
                .headline2!
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        children: [
          Container(
            padding: EdgeInsets.only(right: 30.w, left: 30.w),
            color: AppColors.grey,
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
                              title: "Day ${children[i].day} Workout",
                              id1: widget.id,
                              title1: widget.title,
                            ));
                      },
                      child: Container(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 6,
                                color: Color.fromRGBO(0, 0, 0, 0.06),
                                // blurRadius: 0, // soften the shadow
                                // spreadRadius: 6, //extend the shadow
                                // offset: Offset(
                                //   0, // Move to right 10  horizontally
                                //   1, // Move to bottom 5 Vertically
                                // ),
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    clipBehavior: Clip.antiAlias,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20.r),
                                      topLeft: Radius.circular(20.r),
                                    ),
                                    child: CachedNetworkImage(
                                      height: 60.h,
                                      width: 60.w,
                                      imageUrl: children?[i].image ?? "",
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) =>
                                          const Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Center(
                                          child: AppLoadingComponent(
                                              showLoadingTextForIOS: false),
                                        ),
                                      ),
                                      errorWidget: (context, _, __) => Center(
                                        child: Image.asset(
                                            'assets/images/default_image.jpg'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Day ${children?[i].day ?? 0}",
                                        style: AdaptiveTheme.of(context)
                                            .theme
                                            .textTheme
                                            .headline2!
                                            .copyWith(
                                                fontSize: 18.sp,
                                                color: AppColors.secondaryColor
                                                    .withOpacity(0.6)),
                                      ),
                                      Text(
                                        children?[i].title ?? "",
                                        style: AdaptiveTheme.of(context)
                                            .theme
                                            .textTheme
                                            .headline1!
                                            .copyWith(fontSize: 14.sp),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 12.w),
                                child: Row(
                                  children: [
                                    Text(
                                      "${children?[i].quadsCount ?? 0} Exercises",
                                      style: AdaptiveTheme.of(context)
                                          .theme
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                              color: AppColors.primaryColor
                                                  .withOpacity(0.2)),
                                    ),
                                    SizedBox(width: 6.w),
                                    children?[i].isCompleted ?? false
                                        ? SvgPicture.asset(
                                            AppIcons.checkCircleFilled,
                                            color: AppColors.secondaryColor,
                                            height: 24.h,
                                          )
                                        : CircularPercentIndicator(
                                            radius: 22.h,
                                            lineWidth: 2.0,
                                            progressColor:
                                                AppColors.primaryColor,
                                            backgroundColor:
                                                AppColors.secondaryColor,
                                          ),
                                  ],
                                ),
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
