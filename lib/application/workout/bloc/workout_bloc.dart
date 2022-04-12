import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/workout/pages.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/wokout_main_list_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_day_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_quad_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_splits_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_splits_roadmap_model.dart';
import 'package:fitness_uncensored/infrastructure/workout/workout_api.dart';
import 'package:fitness_uncensored/utils/get_it.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_event.dart';
part 'workout_state.dart';
part 'workout_bloc.freezed.dart';

class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  WorkoutBloc() : super(const _WorkoutState());

  @override
  Stream<WorkoutState> mapEventToState(WorkoutEvent event) async* {
    yield* event.map(
      getWorkoutList: _getWorkoutList,
      getWorkoutMainDetail: _getWorkoutMainDetail,
      getWorkoutDayDetail: _getWorkoutDayDetail,
      getWorkoutSplitsRoadmap: _getWorkoutSplitsRoadmap,
      getWorkoutQuad: _getWorkoutQuad,
      completeWorkout: _completeWorkout,
      addWeightQuad: _addWeightQuad,
    );
  }

  Stream<WorkoutState> _getWorkoutList(_GetWorkoutList event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      error: '',
      workoutQuadModel: WorkoutQuadModel.init,
      currentPage: WorkoutPages.main,
    );

    final Either<String, List<WorkoutMainListModel>> result =
        await getIt.get<WorkoutApi>().getWorkoutList(page: 1);

    yield* result.fold((l) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: l,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        workoutMainList: r,
      );
    });
  }

  Stream<WorkoutState> _getWorkoutDayDetail(_GetWorkoutDayDetail event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      error: '',
      isCompleted: false,
      workoutQuadModel: WorkoutQuadModel.init,
      currentPage: WorkoutPages.workoutDayDetail,
    );

    final Either<String, WorkoutDayDetailModel> result =
        await getIt.get<WorkoutApi>().getWorkoutDayDetail(
              id: event.id,
            );

    yield* result.fold((l) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: l,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        workoutDayDetailModel: r,
      );
    });
  }

  Stream<WorkoutState> _getWorkoutMainDetail(
      _GetWorkoutMainDetail event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      error: '',
      workoutQuadModel: WorkoutQuadModel.init,
      currentPage: WorkoutPages.workoutMainDetail,
    );

    final Either<String, WorkoutMainDetailModel> result =
        await getIt.get<WorkoutApi>().getWorkoutMainDetail(id: event.id);

    yield* result.fold((l) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: l,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        workoutMainDetail: r,
      );
    });
  }

  Stream<WorkoutState> _getWorkoutSplitsRoadmap(
      _GetWorkoutSplitsRoadmap event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      error: '',
      isCompleted: false,
      workoutQuadModel: WorkoutQuadModel.init,
      currentPage: WorkoutPages.workoutSplitsWeek,
    );

    final Either<String, Map<String, List<WorkoutSplitsRoadmapItemModel>>>
        result = await getIt.get<WorkoutApi>().getWorkoutSplitsRoadmap(
              id: event.id,
            );

    yield* result.fold((l) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: l,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        workoutSplitsRoadmapModel: r,
      );
    });
  }

  Stream<WorkoutState> _getWorkoutQuad(_GetWorkoutQuad event) async* {
    yield state.copyWith(
      workoutQuadModel: WorkoutQuadModel.init,
      isCompleted: false,
    );
    final Either<String, WorkoutQuadModel> result =
        await getIt.get<WorkoutApi>().getWorkoutQuadModel(
              id: event.id,
            );

    yield* result.fold((l) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: l,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        workoutQuadModel: r,
      );
    });
  }

  Stream<WorkoutState> _completeWorkout(_CompleteWorkout event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      error: '',
      isCompleted: false,
    );

    final Either<String, Map> result =
        await getIt.get<WorkoutApi>().completeWorkout(id: event.id);

    yield* result.fold((l) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: l,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        isCompleted: true,
      );
    });
  }

  Stream<WorkoutState> _addWeightQuad(_AddWeightQuad event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      error: '',
      isquadaddWeight: false,
    );

    final Either<String, Map> result = await getIt
        .get<WorkoutApi>()
        .addQuadWieght(id: event.id, data: event.data);

    yield* result.fold((l) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: l,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        isquadaddWeight: true,
      );
    });
  }
}
