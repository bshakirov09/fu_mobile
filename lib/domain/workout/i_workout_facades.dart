
import 'package:dartz/dartz.dart';

import 'package:fitness_uncensored/infrastructure/repository/models/wokout_main_list_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_day_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_splits_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_splits_roadmap_model.dart';

abstract class IWorkoutFacade {
  Future<Either<String, List<WorkoutListModel>>> getWorkoutList({
    required int page,
  });

  Future<Either<String, List<WorkoutSplitsModel>>> getWorkoutSplits({
    required int id,
    required String title,
  });

  Future<Either<String, WorkoutDayDetailModel>> getWorkoutDayDetail({
    required int id,
    required String title,
    required int week,
    required int day,
  });

  Future<Either<String, Map<String, List<WorkoutSplitsRoadmapItemModel>>>> getWorkoutSplitsRoadmap({
    required int id,
  });
}
