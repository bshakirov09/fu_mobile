part of 'photo_bloc_bloc.dart';

@freezed
class PhotoBlocState with _$PhotoBlocState {
  const PhotoBlocState._();

  const factory PhotoBlocState({
    @Default(true) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String error,
    @Default(false) bool update,
    @Default(null) GetListPhotoModel? getListPhotoModel,
    @Default(ProgressPages.listphoto) ProgressPages currentPage,
  }) = _PhotoBlocState;
}
