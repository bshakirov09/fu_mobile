import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/application/blog/bloc/blog_bloc.dart';
import 'package:fitness_uncensored/domain/blog/pages.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';

import '../../styles/app_colors.dart';
import 'components/blog_item_component.dart';

class BlogPage extends StatelessWidget {
  final VoidCallback onProfilePressed;

  const BlogPage({Key? key, required this.onProfilePressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: AppBar(
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
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 30.w, top: 22.h, right: 14.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "blog".tr(),
                  style: AdaptiveTheme.of(context).theme.textTheme.headline1,
                ),
                TextButton(
                  onPressed: () =>
                      Navigator.push(context, AppRoutes.blogSearch()),
                  child: SvgPicture.asset(AppIcons.search),
                ),
              ],
            ),
            SizedBox(height: 42.h),
            BlocBuilder<BlogBloc, BlogState>(
              buildWhen: (context, state) =>
                  state.currentPage == BlogPages.main,
              builder: (context, state) {
                if (state.isLoading) {
                  return const AppLoadingComponent();
                } else if (state.hasError) {
                  return const ErrorComponent(errorMessage: '');
                } else {
                  return ListView.separated(
                    itemCount: state.blogListModel.length,
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      return BlogItemComponent(
                        blogListModel: state.blogListModel[i],
                      );
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 16.h),
                  );
                }
              },
            ),
          ])),
    );
  }
}
