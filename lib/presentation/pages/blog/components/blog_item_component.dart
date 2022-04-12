// Created by Muhammed Tolkinov on 25-December-2021

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/components/cached_image_component.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/blog_list_model.dart';

class BlogItemComponent extends StatelessWidget {
  final BlogListModel blogListModel;

  const BlogItemComponent({
    Key? key,
    required this.blogListModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        AppRoutes.blogDetail(
          blogId: blogListModel.id
        ),
      ),
      behavior: HitTestBehavior.opaque,
      child: Row(
        children: [

          CachedImageComponent(
            imageUrl: blogListModel.image ?? "",
            width: 75.h,
            height: 75.h,
            borderRadius: 16.r,
          ),

          SizedBox(width: 16.w),

          Expanded(
            child: Text(
              blogListModel.title,
              style: AdaptiveTheme.of(context).theme.textTheme.headline4,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
