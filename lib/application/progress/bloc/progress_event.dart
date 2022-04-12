part of 'progress_bloc.dart';

@freezed
class ProgressEvent with _$ProgressEvent {
  const ProgressEvent._();

  const factory ProgressEvent.getWeight({
    required String duration,
  }) = _GetWeight;

  const factory ProgressEvent.addCheck() = _AddCheck;

  const factory ProgressEvent.createWeight({
    required String weight,
  }) = _CreateWeight;

  const factory ProgressEvent.updateWeight({
    required String id,
    required String weight,
  }) = _UpdateWeight;

  const factory ProgressEvent.getProgressDetail({
    required String id,
  }) = _GetProgressDetail;
}
