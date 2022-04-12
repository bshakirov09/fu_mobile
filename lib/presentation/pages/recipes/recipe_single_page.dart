import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/application/recipes/recipe_bloc.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'local_components/coach_info_component.dart';

class RecipeSinglePage extends StatefulWidget {
  final String headlineText;
  final int categoryId;

  const RecipeSinglePage({
    Key? key,
    required this.headlineText,
    required this.categoryId,
  }) : super(key: key);

  @override
  State<RecipeSinglePage> createState() => _RecipeSinglePageState();
}

class _RecipeSinglePageState extends State<RecipeSinglePage> {
  int _selectedCoachIndex = 0;

  void _changeRecipeAndSelectedCoachIndex(
      {required int index, required List<String> recipes}) {
    if (_selectedCoachIndex != index) {
      setState(() => _selectedCoachIndex = index);
    }
  }

  @override
  void initState() {
    context.read<RecipeBloc>().add(RecipeEvent.getRecipeDetail(
          subCategoryId: widget.categoryId,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: AppBar(
          foregroundColor: AppColors.primaryColor,
          centerTitle: true,
          backgroundColor: AppColors.white,
          elevation: 4,
          shadowColor: AppColors.white.withOpacity(0.4),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(context, AppRoutes.profile());
              },
              child: Padding(
                padding: EdgeInsets.only(right: 32.w),
                child: SvgPicture.asset(
                  AppIcons.accountCircleFilled,
                ),
              ),
            ),
          ],
        ),
      ),
      body: BlocBuilder<RecipeBloc, RecipeState>(
        builder: (context, state) {
          if (state.isLoading || state.recipesDetailModel == null) {
            return const AppLoadingComponent();
          } else if (state.hasError) {
            return Center(
              child: ErrorComponent(errorMessage: state.error),
            );
          } else {
            return Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 22.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.headlineText,
                    style: AdaptiveTheme.of(context).theme.textTheme.headline1,
                  ),
                  SizedBox(height: 32.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => _changeRecipeAndSelectedCoachIndex(
                            index: 0,
                            recipes:
                                state.recipesDetailModel?.veganIngredients ??
                                    []),
                        child: CoachInfoComponent(
                            coachImage: 'assets/images/taylor.png',
                            coachName: 'Taylor',
                            isSelected: _selectedCoachIndex == 0),
                      ),
                      GestureDetector(
                        onTap: () => _changeRecipeAndSelectedCoachIndex(
                            index: 1,
                            recipes:
                                state.recipesDetailModel?.ordinaryIngredients ??
                                    []),
                        child: CoachInfoComponent(
                            coachImage: 'assets/images/sam.png',
                            coachName: 'Sam',
                            isSelected: _selectedCoachIndex == 1),
                      ),
                    ],
                  ),
                  SizedBox(height: 32.h),
                  Text(
                    _selectedCoachIndex == 0
                        ? 'vegan_ingredients'.tr()
                        : 'ordinary_ingredients'.tr(),
                    style: AdaptiveTheme.of(context).theme.textTheme.headline4,
                  ),
                  SizedBox(height: 22.h),
                  Expanded(
                    child: ListView.builder(
                        itemCount: _selectedCoachIndex == 0
                            ? state.recipesDetailModel?.veganIngredients.length
                            : state
                                .recipesDetailModel?.ordinaryIngredients.length,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 16.h),
                            child: Row(
                              children: [
                                // DottedBorder(
                                //   borderType: BorderType.Circle,
                                //   dashPattern: const [3, 3],
                                //   color: AppColors.primaryColor,
                                //   child: Container(
                                //     height: 10.h,
                                //     width: 10.h,
                                //     margin: EdgeInsets.all(5.h),
                                //     decoration: const BoxDecoration(
                                //       color: AppColors.primaryColor,
                                //       shape: BoxShape.circle,
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(width: 12.w),
                                Text(
                                  _selectedCoachIndex == 0
                                      ? state.recipesDetailModel!
                                          .veganIngredients[i]
                                      : state.recipesDetailModel!
                                          .ordinaryIngredients[i],
                                  style: AdaptiveTheme.of(context)
                                      .theme
                                      .textTheme
                                      .bodyText2,
                                )
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
