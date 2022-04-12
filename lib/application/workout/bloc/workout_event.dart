part of 'workout_bloc.dart';

@freezed
class WorkoutEvent with _$WorkoutEvent {
  const WorkoutEvent._();

  const factory WorkoutEvent.getWorkoutList() = _GetWorkoutList;

  const factory WorkoutEvent.getWorkoutMainDetail({
    required int id,
  }) = _GetWorkoutMainDetail;

  const factory WorkoutEvent.getWorkoutDayDetail({
    required int id,
  }) = _GetWorkoutDayDetail;

  const factory WorkoutEvent.getWorkoutSplitsRoadmap({
    required int id,
  }) = _GetWorkoutSplitsRoadmap;

  const factory WorkoutEvent.getWorkoutQuad({
    required int id,
  }) = _GetWorkoutQuad;

  const factory WorkoutEvent.completeWorkout({
    required int id,
  }) = _CompleteWorkout;

  const factory WorkoutEvent.addWeightQuad({
    required int id,
    required String data,
  }) = _AddWeightQuad;
}
