part of 'workout_bloc.dart';

@freezed
class WorkoutEvent with _$WorkoutEvent {
  const WorkoutEvent._();

  const factory WorkoutEvent.getWorkoutList() = _GetWorkoutList;

  const factory WorkoutEvent.getWorkoutSplits({
    required int id,
    required String title,
  }) = _GetWorkoutSplits;

  const factory WorkoutEvent.getWorkoutDayDetail({
    required int id,
    required String title,
    required int week,
    required int day,
  }) = _GetWorkoutDayDetail;

  const factory WorkoutEvent.getWorkoutSplitsRoadmap({
    required int id,
  }) = _GetWorkoutSplitsRoadmap;
}
