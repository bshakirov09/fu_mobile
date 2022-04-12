part of 'photo_bloc_bloc.dart';

@freezed
class PhotoBlocEvent with _$PhotoBlocEvent {
  const PhotoBlocEvent._();

  const factory PhotoBlocEvent.getPhotoList() = _GetPhotoList;

  const factory PhotoBlocEvent.getPhotoFromDate({
    required String date,
  }) = _GetPhotoFromDate;

  const factory PhotoBlocEvent.getNextPhotoListPage() = _GetNextPhotoListPage;

  const factory PhotoBlocEvent.addPhoto({
    required String front,
    required String side,
    required String back,
  }) = _AddPhoto;

  const factory PhotoBlocEvent.detailViewPhotoRight({
    required String direction,
    required String currentDate,
  }) = _DetailViewPhotoRight;

  const factory PhotoBlocEvent.detailViewPhotoLeft({
    required String direction,
    required String currentDate,
  }) = _DetailViewPhotoLeft;
}
