// Created by Muhammed Tolkinov on 10-December-2021

import 'package:fitness_uncensored/application/progress/journalBloc/journal_bloc.dart';
import 'package:fitness_uncensored/application/progress/photoBloc/photo_bloc_bloc.dart';
import 'package:fitness_uncensored/application/workout/bloc/workout_bloc.dart';
import 'package:fitness_uncensored/presentation/pages/progress/progress_main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitness_uncensored/application/app_manager/app_manager_cubit.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/application/blog/bloc/blog_bloc.dart';
import 'package:fitness_uncensored/presentation/pages/blog/blog_page.dart';
import 'package:fitness_uncensored/application/profile/profile_bloc.dart';
import 'package:fitness_uncensored/presentation/pages/profile/profile_page.dart';
import 'package:fitness_uncensored/presentation/pages/workout/workout_main_page.dart';
import 'package:fitness_uncensored/application/recipes/recipe_bloc.dart';
import 'package:fitness_uncensored/presentation/pages/recipes/recipes_page.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

import 'bottom_bar_item_component.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;

  void _init() {
    context.read<BlogBloc>().add(const BlogEvent.getBlogList());
    context.read<RecipeBloc>().add(const RecipeEvent.getRecipeList());
    context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
    context.read<WorkoutBloc>().add(const WorkoutEvent.getWorkoutList());
    context.read<PhotoBlocBloc>().add(const PhotoBlocEvent.getPhotoList());
    context.read<JournalBloc>().add(const JournalEvent.getJournalList());
  }

  void _onIndexChange(int index) {
    if (_index != index) {
      setState(() => _index = index);
    }
  }

  @override
  void initState() {
    _init();
    AppManagerCubit.context = context;
    context.read<AppManagerCubit>().refresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return BlocListener<AppManagerCubit, AppManagerState>(
      listener: (context, state) {
        if (state.logoutUser) {
          Navigator.pushAndRemoveUntil(
              context, AppRoutes.signIn(), (route) => false);
        }
      },
      child: Scaffold(
        body: IndexedStack(
          index: _index,
          children: [
            const ProgressMainPage(),
            BlogPage(onProfilePressed: () => _onIndexChange(4)),
            WorkoutMainPage(onProfilePressed: () => _onIndexChange(4)),
            RecipesPage(onProfilePressed: () => _onIndexChange(4)),
            const ProfilePage(),
          ],
        ),
        bottomNavigationBar: Container(
          width: 1.sw,
          height: 70.h,
          padding: EdgeInsets.only(left: 12.w, right: 12.w, bottom: 16.h),
          color: AppColors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomBarItemComponent(
                icon: AppIcons.monitorWeightOut,
                itemText: 'progress'.tr(),
                isSelected: _index == 0,
                index: 0,
                onPressed: () => _onIndexChange(0),
              ),
              BottomBarItemComponent(
                icon: AppIcons.textSnippetOutlined,
                itemText: 'blog'.tr(),
                isSelected: _index == 1,
                index: 1,
                onPressed: () => _onIndexChange(1),
              ),
              BottomBarItemComponent(
                icon: AppIcons.fitnessCenter,
                itemText: 'workouts'.tr(),
                isSelected: _index == 2,
                index: 2,
                onPressed: () => _onIndexChange(2),
              ),
              BottomBarItemComponent(
                icon: AppIcons.restaurantMenu,
                itemText: 'recipes'.tr(),
                isSelected: _index == 3,
                index: 3,
                onPressed: () => _onIndexChange(3),
              ),
              BottomBarItemComponent(
                icon: AppIcons.accountCircleOutlined,
                itemText: 'profile'.tr(),
                isSelected: _index == 4,
                index: 4,
                onPressed: () => _onIndexChange(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
