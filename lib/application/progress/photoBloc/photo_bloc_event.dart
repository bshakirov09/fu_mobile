part of 'photo_bloc_bloc.dart';

@freezed
class PhotoBlocEvent with _$PhotoBlocEvent {
  const PhotoBlocEvent._();

  const factory PhotoBlocEvent.getPhotoList() = _GetPhotoList;

  const factory PhotoBlocEvent.getNextPhotoListPage() = _GetNextPhotoListPage;

  const factory PhotoBlocEvent.addPhoto({
    required String front,
    required String side,
    required String back,
  }) = _AddPhoto;
}
