
import 'package:dartz/dartz.dart';

import 'package:fitness_uncensored/domain/workout/i_workout_facades.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/wokout_main_list_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_day_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_splits_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_splits_roadmap_model.dart';
import 'package:fitness_uncensored/infrastructure/workout/get_workout_day_detail_request.dart';
import 'package:fitness_uncensored/infrastructure/workout/get_workout_list_request.dart';
import 'package:fitness_uncensored/infrastructure/workout/get_workout_splits_request.dart';
import 'package:fitness_uncensored/infrastructure/workout/get_workout_splits_roadmap_request.dart';

class WorkoutApi implements IWorkoutFacade {
  @override
  Future<Either<String, List<WorkoutListModel>>> getWorkoutList({
    required int page,
  }) async {
    try {
      final GetWorkoutListRequest request = GetWorkoutListRequest();
      return await request.getData(page: page);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<WorkoutSplitsModel>>> getWorkoutSplits({
    required int id,
    required String title,
  }) async {
    try {
      final GetWorkoutSplitsRequest request = GetWorkoutSplitsRequest();
      return await request.getData(id: id, title: title);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, WorkoutDayDetailModel>> getWorkoutDayDetail({
    required int id,
    required String title,
    required int week,
    required int day,
  }) async {
    try {
      final GetWorkoutDayDetailRequest request = GetWorkoutDayDetailRequest();
      return await request.getData(id: id, week: week, day: day);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Map<String, List<WorkoutSplitsRoadmapItemModel>>>> getWorkoutSplitsRoadmap({
    required int id,
  }) async {
    try {
      final GetWorkoutSplitsRoadmapRequest request = GetWorkoutSplitsRoadmapRequest();
      return await request.getData(id: id);
    } catch (e) {
      return left(e.toString());
    }
  }
}
