import 'package:dartz/dartz.dart';

import 'package:fitness_uncensored/infrastructure/repository/models/wokout_main_list_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_day_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_quad_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_splits_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_splits_roadmap_model.dart';

abstract class IWorkoutFacade {
  Future<Either<String, List<WorkoutMainListModel>>> getWorkoutList({
    required int page,
  });

  Future<Either<String, WorkoutMainDetailModel>> getWorkoutMainDetail({
    required int id,
  });

  Future<Either<String, WorkoutDayDetailModel>> getWorkoutDayDetail({
    required int id,
  });

  Future<Either<String, Map<String, List<WorkoutSplitsRoadmapItemModel>>>>
      getWorkoutSplitsRoadmap({
    required int id,
  });
  Future<Either<String, WorkoutQuadModel>> getWorkoutQuadModel({
    required int id,
  });
  Future<Either<String, Map>> completeWorkout({
    required int id,
  });
  Future<Either<String, Map>> addQuadWieght({
    required int id,
    required String data,
  });
}
