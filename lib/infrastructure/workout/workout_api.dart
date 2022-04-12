import 'package:dartz/dartz.dart';

import 'package:fitness_uncensored/domain/workout/i_workout_facades.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/wokout_main_list_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_day_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_quad_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_splits_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_splits_roadmap_model.dart';
import 'package:fitness_uncensored/infrastructure/workout/add_quad_weight_request.dart';
import 'package:fitness_uncensored/infrastructure/workout/complete_workout_request.dart';
import 'package:fitness_uncensored/infrastructure/workout/get_workout_day_detail_request.dart';
import 'package:fitness_uncensored/infrastructure/workout/get_workout_list_request.dart';
import 'package:fitness_uncensored/infrastructure/workout/get_workout_main_detail_request.dart';
import 'package:fitness_uncensored/infrastructure/workout/get_workout_quad_request.dart';
import 'package:fitness_uncensored/infrastructure/workout/get_workout_splits_roadmap_request.dart';

class WorkoutApi implements IWorkoutFacade {
  @override
  Future<Either<String, List<WorkoutMainListModel>>> getWorkoutList({
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
  Future<Either<String, WorkoutMainDetailModel>> getWorkoutMainDetail({
    required int id,
  }) async {
    try {
      final GetWorkoutMainDetailRequest request = GetWorkoutMainDetailRequest();
      return await request.getData(id: id);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, WorkoutDayDetailModel>> getWorkoutDayDetail({
    required int id,
  }) async {
    try {
      final GetWorkoutDayDetailRequest request = GetWorkoutDayDetailRequest();
      return await request.getData(id: id);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Map<String, List<WorkoutSplitsRoadmapItemModel>>>>
      getWorkoutSplitsRoadmap({
    required int id,
  }) async {
    try {
      final GetWorkoutSplitsRoadmapRequest request =
          GetWorkoutSplitsRoadmapRequest();
      return await request.getData(id: id);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, WorkoutQuadModel>> getWorkoutQuadModel({
    required int id,
  }) async {
    try {
      final GetWorkoutQuadRequest request = GetWorkoutQuadRequest();
      return await request.getData(id: id);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Map>> completeWorkout({
    required int id,
  }) async {
    try {
      final CompleteWorkout request = CompleteWorkout();
      return await request.getData(id: id);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Map>> addQuadWieght({
    required int id,
    required String data,
  }) async {
    try {
      final AddQuadWeightRequest request = AddQuadWeightRequest();
      return await request.getData(id: id, data: data);
    } catch (e) {
      return left(e.toString());
    }
  }
}
