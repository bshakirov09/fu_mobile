part of 'photo_bloc_bloc.dart';

@freezed
class PhotoBlocState with _$PhotoBlocState {
  const PhotoBlocState._();

  const factory PhotoBlocState({
    @Default(true) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String error,
    @Default(false) bool update,
    @Default(false) bool isUpdateDetailPhotoRight,
    @Default(false) bool isUpdateDetailPhotoLeft,
    @Default(null) GetListPhotoModel? getListPhotoModel,
    @Default(null) GetPhotoFromDateModel? getPhotoFromDateModel,
    @Default(null) DetailViewPhotoLeftModel? detailViewPhotoLeftModel,
    @Default(null) DetailViewPhotoRightModel? detailViewPhotoRightModel,
    @Default(ProgressPages.listphoto) ProgressPages currentPage,
  }) = _PhotoBlocState;
}
