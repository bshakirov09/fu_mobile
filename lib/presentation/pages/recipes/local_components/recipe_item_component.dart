// Created by Muhammed Tolkinov on 13-December-2021

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/recipes_list_model.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/components/cached_image_component.dart';

class RecipeItemComponent extends StatelessWidget {
  final String image;
  final List<RecipeMainCategoryModel> recipeCategories;

  const RecipeItemComponent({
    Key? key,
    required this.image,
    required this.recipeCategories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CachedImageComponent(
          imageUrl: image,
          height: 130.h,
          width: double.infinity,
          borderRadius: 20.r,
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(recipeCategories.length, (i) {
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  AppRoutes.recipeCategory(
                      categoryId: recipeCategories[i].id,
                      categoryName: recipeCategories[i].title)),
              child: Container(
                height: 100.w,
                width: 100.w,
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: AppColors.grey,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primaryColor.withOpacity(0.06),
                      offset: const Offset(0, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    recipeCategories[i].title,
                    textAlign: TextAlign.center,
                    style: AdaptiveTheme.of(context)
                        .theme
                        .textTheme
                        .headline4!
                        .copyWith(fontSize: 14.sp),
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
