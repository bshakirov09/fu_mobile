part of 'workout_bloc.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const WorkoutState._();

  const factory WorkoutState({
    @Default(true) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String error,
    @Default([]) List<WorkoutListModel> workoutMainList,
    @Default([]) List<WorkoutSplitsModel> workoutSplits,
    @Default(null) WorkoutDayDetailModel? workoutDayDetailModel,
    @Default({}) Map<String, List<WorkoutSplitsRoadmapItemModel>> workoutSplitsRoadmapModel,
    @Default(WorkoutPages.main) WorkoutPages currentPage,
  }) = _WorkoutState;
}
