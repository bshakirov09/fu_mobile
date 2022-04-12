
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/utils/launch.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/utils/format_date.dart';
import 'package:fitness_uncensored/application/blog/bloc/blog_bloc.dart';
import 'package:fitness_uncensored/presentation/components/podcast_button_component.dart';
import 'package:fitness_uncensored/presentation/components/cached_image_component.dart';
import 'package:fitness_uncensored/domain/blog/pages.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class BlogDetailPage extends StatefulWidget {
  final int blogId;

  const BlogDetailPage({
    Key? key,
    required this.blogId,
  }) : super(key: key);
  @override
  State<BlogDetailPage> createState() => _BlogDetailPageState();
}

class _BlogDetailPageState extends State<BlogDetailPage> {
  @override
  void initState() {
    context.read<BlogBloc>().add(BlogEvent.getBlogDetail(
      blogId: widget.blogId,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogBloc, BlogState>(
      buildWhen: (context, state) => state.currentPage == BlogPages.detail,
      builder: (context, state) {
        if (state.isLoading || state.blogDetailModel == null) {
          return const Material(
            child: AppLoadingComponent(),
            color: AppColors.white,
          );
        } else if (state.hasError) {
          return Material(
            child: Center(
              child: ErrorComponent(errorMessage: state.error),
            ),
          );
        }
        else {
          return Scaffold(
              body: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      snap: false,
                      pinned: true,
                      floating: true,
                      automaticallyImplyLeading: false,
                      shadowColor: Colors.transparent,
                      backgroundColor: AppColors.white,
                      expandedHeight: 250.h,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Stack(
                          children: [
                            CachedImageComponent(
                              imageUrl: state.blogDetailModel!.image,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                            PreferredSize(
                              preferredSize: Size.fromHeight(56.h),
                              child: const AppBarComponent(
                                iconPath: AppIcons.accountCircleFilled,
                                buttonColors: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ];
                },
                body: Scrollbar(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.fromLTRB(30.w, 22.h, 30.w, 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          FormatDate.mDYear(
                              date: state.blogDetailModel?.createdDate ?? ''),
                          style: AdaptiveTheme.of(context)
                              .theme
                              .textTheme
                              .headline4!
                              .copyWith(
                                fontSize: 14.sp,
                                color: AppColors.disabledTextColor,
                              ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          state.blogDetailModel!.title,
                          style: AdaptiveTheme.of(context)
                              .theme
                              .textTheme
                              .headline3,
                        ),
                        SizedBox(height: 20.h),
                        Html(data: state.blogDetailModel!.description),
                      ],
                    ),
                  ),
                ),
              ),
              bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 26.w, right: 32.w, bottom: 16.h),
                child: PodcastButtonComponent(
                  onPressed: () =>
                      urlLaunch(url: state.blogDetailModel!.podcast),
                  text: 'listen_to_the_podcast'.tr(),
                ),
              ));
        }
      },
    );
  }
}
