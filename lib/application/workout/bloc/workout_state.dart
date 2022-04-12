part of 'workout_bloc.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const WorkoutState._();

  const factory WorkoutState({
    @Default(true) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String error,
    @Default(false) bool isquadaddWeight,
    @Default(false) bool isCompleted,
    @Default([]) List<WorkoutMainListModel> workoutMainList,
    @Default(WorkoutMainDetailModel.init)
        WorkoutMainDetailModel workoutMainDetail,
    @Default(null) WorkoutDayDetailModel? workoutDayDetailModel,
    @Default(WorkoutQuadModel.init) WorkoutQuadModel workoutQuadModel,
    @Default({})
        Map<String, List<WorkoutSplitsRoadmapItemModel>>
            workoutSplitsRoadmapModel,
    @Default(WorkoutPages.main) WorkoutPages currentPage,
  }) = _WorkoutState;
}
