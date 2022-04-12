import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/domain/recipes/pages.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/application/recipes/recipe_bloc.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'local_components/recipe_item_component.dart';

class RecipesPage extends StatelessWidget {
  final VoidCallback onProfilePressed;

  const RecipesPage({Key? key, required this.onProfilePressed})
      : super(key: key);

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
              onTap: onProfilePressed,
              child: Padding(
                padding: EdgeInsets.only(right: 32.w),
                child: SvgPicture.asset(
                  AppIcons.accountCircleFilled,
                ),
              ),
            ),
          ],
        ),

        // AppBarComponent(
        //   main: true,
        //   iconPath: AppIcons.accountCircleFilled,
        //   onRightButtonPressed: onProfilePressed,

        // ),
      ),
      body: BlocBuilder<RecipeBloc, RecipeState>(
        buildWhen: (context, state) => state.currentPage == RecipesPages.main,
        builder: (context, state) {
          if (state.isLoading) {
            return const AppLoadingComponent();
          } else if (state.hasError) {
            return ErrorComponent(errorMessage: state.error);
          } else {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 30.w, top: 22.h, right: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'recipes'.tr(),
                      style:
                          AdaptiveTheme.of(context).theme.textTheme.headline1,
                    ),
                    SizedBox(height: 24.h),
                    ListView.separated(
                      itemCount: state.recipesModel?.images.length ?? 0,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, i) {
                        return RecipeItemComponent(
                          image: state.recipesModel?.images[i].image ?? '',
                          recipeCategories:
                              i < state.recipesModel!.categories.length
                                  ? state.recipesModel!.categories[i]
                                  : [],
                        );
                      },
                      separatorBuilder: (context, i) => SizedBox(height: 24.h),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
