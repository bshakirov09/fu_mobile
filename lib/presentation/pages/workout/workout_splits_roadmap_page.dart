import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitness_uncensored/domain/workout/pages.dart';
import 'package:fitness_uncensored/application/workout/bloc/workout_bloc.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/error_component.dart';
import 'package:fitness_uncensored/presentation/pages/workout/component/expansion_tile_component.dart';
import 'package:easy_localization/easy_localization.dart';

class WorkoutSplitsRoadmapPage extends StatefulWidget {
  final int id;
  final String title;

  const WorkoutSplitsRoadmapPage({
    Key? key,
    required this.id,
    required this.title,
  }) : super(key: key);

  @override
  State<WorkoutSplitsRoadmapPage> createState() =>
      _WorkoutSplitsRoadmapPageState();
}

class _WorkoutSplitsRoadmapPageState extends State<WorkoutSplitsRoadmapPage> {
  @override
  void initState() {
    context.read<WorkoutBloc>().add(WorkoutEvent.getWorkoutSplitsRoadmap(
          id: widget.id,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 4,
        shadowColor: AppColors.white.withOpacity(0.4),
        title: Text(
          widget.title + "_split".tr(),
        ),
        centerTitle: true,
        foregroundColor: AppColors.primaryColor,
      ),
      // PreferredSize(
      //   preferredSize: Size.fromHeight(56.h),
      //   child: AppBarComponent(
      //     text: ,
      //   ),
      // ),
      body: BlocBuilder<WorkoutBloc, WorkoutState>(
        buildWhen: (context, state) =>
            state.currentPage == WorkoutPages.workoutSplitsWeek,
        builder: (context, state) {
          if (state.isLoading) {
            return const AppLoadingComponent();
          } else if (state.hasError) {
            return ErrorComponent(errorMessage: state.error);
          } else {
            return ExpansionTileComponent(
              items: state.workoutSplitsRoadmapModel,
              title: widget.title,
              id: widget.id,
            );
          }
        },
      ),
    );
  }
}
