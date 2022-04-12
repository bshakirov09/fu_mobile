part of 'progress_bloc.dart';

@freezed
class ProgressState with _$ProgressState {
  const ProgressState._();

  const factory ProgressState({
    @Default(true) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String error,
    @Default(false) bool update,
    @Default({}) Map<dynamic, dynamic> weight,
    @Default(null) AddCheckWeightModel? addCheckWeightModel,
    @Default(null) GetProgressDetailModel? getProgressDetailModel,
    @Default(ProgressPages.listweight) ProgressPages currentPage,
  }) = _ProgressState;
}
