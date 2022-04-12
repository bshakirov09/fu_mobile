
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitness_uncensored/utils/debouncer.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:fitness_uncensored/application/blog/bloc/blog_bloc.dart';
import 'package:fitness_uncensored/domain/blog/pages.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

import 'components/blog_item_component.dart';
import 'components/search_component.dart';

class BlogSearchPage extends StatefulWidget {
  const BlogSearchPage({Key? key}) : super(key: key);

  @override
  State<BlogSearchPage> createState() => _BlogSearchPageState();
}

class _BlogSearchPageState extends State<BlogSearchPage> {

  final Debouncer debouncer = Debouncer();
  String searchValue = '';

  void _search() {
    context.read<BlogBloc>().add(BlogEvent.getBlogSearch(
      title: searchValue
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: const AppBarComponent(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 22.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SearchComponent(
              onChanged: (value) {
                searchValue = value;
                debouncer.run(_search);
              },
              onSearchButtonPressed: _search,
            ),

            SizedBox(height: 40.h),

            Text(
              "results".tr(),
              style: AdaptiveTheme.of(context).theme.textTheme.headline4!.copyWith(
                fontSize: 14.sp,
                color: AppColors.primaryColor.withOpacity(0.45)
              ),
            ),

            SizedBox(height: 20.h),

            BlocBuilder<BlogBloc, BlogState>(
              buildWhen: (context, state) => state.currentPage == BlogPages.search,
              builder: (context, state) {
                if (state.isLoading) {
                  return const AppLoadingComponent();
                }
                else if (state.hasError) {
                  return ErrorComponent(errorMessage: state.error);
                }
                else {
                  return ListView.separated(
                    itemCount: state.blogSearch.length,
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      return BlogItemComponent(
                        blogListModel: state.blogSearch[i],
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
