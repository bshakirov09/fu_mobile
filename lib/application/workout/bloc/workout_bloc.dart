import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/workout/pages.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/wokout_main_list_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_day_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_splits_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_splits_roadmap_model.dart';
import 'package:fitness_uncensored/infrastructure/workout/workout_api.dart';
import 'package:fitness_uncensored/utils/get_it.dart';
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
      getWorkoutSplits: _getWorkoutSplits,
      getWorkoutDayDetail: _getWorkoutDayDetail,
      getWorkoutSplitsRoadmap: _getWorkoutSplitsRoadmap,
    );
  }

  Stream<WorkoutState> _getWorkoutList(_GetWorkoutList event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      error: '',
      currentPage: WorkoutPages.main,
    );

    final Either<String, List<WorkoutListModel>> result =
        await getIt.get<WorkoutApi>().getWorkoutList(page: 1);

    yield* result.fold((l) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: Left(l).value,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        workoutMainList: Right(r).value,
      );
    });
  }

  Stream<WorkoutState> _getWorkoutDayDetail(_GetWorkoutDayDetail event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      error: '',
      currentPage: WorkoutPages.workoutDayDetail,
    );

    final Either<String, WorkoutDayDetailModel> result =
      await getIt.get<WorkoutApi>().getWorkoutDayDetail(
        id: event.id,
        week: event.week,
        day: event.day,
        title: event.title,
      );

    yield* result.fold((l) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: Left(l).value,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        workoutDayDetailModel: Right(r).value,
      );
    });
  }

  Stream<WorkoutState> _getWorkoutSplits(_GetWorkoutSplits event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      error: '',
      currentPage: WorkoutPages.workoutSplits,
    );

    final Either<String, List<WorkoutSplitsModel>> result = await
      getIt.get<WorkoutApi>().getWorkoutSplits(
        id: event.id,
        title: event.title
      );

    yield* result.fold((l) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: Left(l).value,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        workoutSplits: Right(r).value,
      );
    });
  }

  Stream<WorkoutState> _getWorkoutSplitsRoadmap(_GetWorkoutSplitsRoadmap event) async* {

    yield state.copyWith(
      isLoading: true,
      hasError: false,
      error: '',
      currentPage: WorkoutPages.workoutSplitsWeek,
    );

    final Either<String, Map<String, List<WorkoutSplitsRoadmapItemModel>>> result =
      await getIt.get<WorkoutApi>().getWorkoutSplitsRoadmap(
        id: event.id,
      );

    yield* result.fold((l) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: Left(l).value,
      );
    },
    (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        workoutSplitsRoadmapModel: Right(r).value,
      );
    });
  }
}
