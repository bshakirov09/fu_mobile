import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/application/progress/journalBloc/journal_bloc.dart';
import 'package:fitness_uncensored/domain/progress/pages.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/components/icon_choosen_component.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/utils/format_date.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:flutter_svg/svg.dart';

class AllJournalPage extends StatefulWidget {
  const AllJournalPage({Key? key}) : super(key: key);

  @override
  State<AllJournalPage> createState() => _AllJournalPageState();
}

class _AllJournalPageState extends State<AllJournalPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.h),
          child: AppBarComponent(
            iconPath: AppIcons.add,
            onRightButtonPressed: () {
              Navigator.push(context, AppRoutes.addNewNotes());
            },
          ),
        ),
        body: BlocBuilder<JournalBloc, JournalState>(
          buildWhen: (context, state) =>
              state.currentPage == ProgressPages.listjournal,
          builder: (context, state) {
            if (state.isLoading || state.getJournalList == null) {
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
                          "notes".tr(),
                          style: AdaptiveTheme.of(context)
                              .theme
                              .textTheme
                              .headline1,
                        ),
                        SvgPicture.asset(AppIcons.dateRange)
                      ],
                    ),
                    SizedBox(height: 32.h),
                    Expanded(
                        child: ListView.separated(
                      itemCount: state.getJournalList!.results!.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              AppRoutes.noteSingle(
                                  id: state.getJournalList!.results![index].id),
                            );
                          },
                          child: Container(
                            height: 134.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                border:
                                    Border.all(color: AppColors.primaryColor)),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.r),
                                    topRight: Radius.circular(20.r),
                                  ),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 37.h,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 8.h, bottom: 5.h),
                                      child: Text(
                                        FormatDate.mmDYear(
                                            date: state.getJournalList!
                                                .results![index].createdDttm
                                                .toString()),
                                        textAlign: TextAlign.center,
                                        style: AdaptiveTheme.of(context)
                                            .theme
                                            .textTheme
                                            .caption,
                                      ),
                                    ),
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                Container(
                                  height: 2.h,
                                  color: AppColors.secondaryColor,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 24.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 8.h),
                                          Text(
                                            "Mood: " +
                                                state.getJournalList!
                                                    .results![index].mood
                                                    .tr(),
                                            style: AdaptiveTheme.of(context)
                                                .theme
                                                .textTheme
                                                .bodyText2,
                                          ),
                                          SizedBox(height: 8.h),
                                          Text(
                                            "Sleep: " +
                                                state.getJournalList!
                                                    .results![index].digestion
                                                    .tr(),
                                            style: AdaptiveTheme.of(context)
                                                .theme
                                                .textTheme
                                                .bodyText2,
                                          ),
                                          SizedBox(height: 8.h),
                                          Text(
                                            "Intensity: " +
                                                state
                                                    .getJournalList!
                                                    .results![index]
                                                    .intensityRate
                                                    .tr(),
                                            style: AdaptiveTheme.of(context)
                                                .theme
                                                .textTheme
                                                .bodyText2,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 30.w),
                                      child: SvgPicture.asset(
                                          IconChoosenComponent.iconChosen(
                                              switchCase: state.getJournalList!
                                                  .results![index].mood)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, i) {
                        return SizedBox(
                          height: 16.h,
                        );
                      },
                    ))
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
