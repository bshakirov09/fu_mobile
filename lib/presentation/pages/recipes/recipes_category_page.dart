
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/application/recipes/recipe_bloc.dart';
import 'package:fitness_uncensored/domain/recipes/pages.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/components/podcast_button_component.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';

class RecipesCategoryPage extends StatefulWidget {
  final String headlineText;
  final int categoryId;

  const RecipesCategoryPage({
    Key? key,
    required this.headlineText,
    required this.categoryId,
  }) : super(key: key);

  @override
  State<RecipesCategoryPage> createState() => _RecipesCategoryPageState();
}

class _RecipesCategoryPageState extends State<RecipesCategoryPage> {

  @override
  void initState() {
    context.read<RecipeBloc>().add(RecipeEvent.getRecipeCategory(
      categoryId: widget.categoryId
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: AppBarComponent(
          iconPath: AppIcons.accountCircleFilled,
          onRightButtonPressed: () => Navigator.push(
            context,
            AppRoutes.profile()
          ),
        ),
      ),
      body: BlocBuilder<RecipeBloc, RecipeState>(
        buildWhen: (context, state) => state.currentPage == RecipesPages.categories,
        builder: (context, state) {
          if (state.isLoading) {
            return const AppLoadingComponent();
          }
          else if (state.hasError) {
            return Center(
              child: ErrorComponent(errorMessage: state.error),
            );
          }
          else {
            return Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 22.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [
                      Text(
                        'recipes'.tr(),
                        style: AdaptiveTheme.of(context).theme.textTheme.headline1,
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Icon(
                          Icons.chevron_right,
                          color: AppColors.primaryColor,
                          size: 30.h,
                        ),
                      ),

                      Expanded(
                        child: Text(
                          widget.headlineText,
                          style:
                          AdaptiveTheme.of(context).theme.textTheme.headline2,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 24.h),

                  Expanded(
                    child: ListView.separated(
                      itemCount: state.recipeCategoryList.length,
                      itemBuilder: (context, i) {
                        return PodcastButtonComponent(
                          onPressed: () => Navigator.push(
                            context,
                            AppRoutes.recipeDetail(
                              headlineText: state.recipeCategoryList[i].title,
                              categoryId: state.recipeCategoryList[i].id,
                            )
                          ),
                          text: state.recipeCategoryList[i].title,
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(height: 12.h),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
