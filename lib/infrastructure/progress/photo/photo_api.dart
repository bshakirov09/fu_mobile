import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/progress/i_photos_facades.dart';
import 'package:fitness_uncensored/infrastructure/progress/photo/create_photo_request.dart';
import 'package:fitness_uncensored/infrastructure/progress/photo/get_photo_list_request.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_photos_lis_model.dart';

class PhotoApi implements IphotosFacade {
  @override
  Future<Either<String, GetListPhotoModel>> getPhotoList({
    required int page,
  }) async {
    try {
      final GetPhotoListRequest request = GetPhotoListRequest();
      return await request.getData(page: page);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Unit>> createPhoto({
    required int front,
    required int side,
    required int back,
  }) async {
    try {
      final CreatePhotoRequest request = CreatePhotoRequest();
      return await request.createPhoto(front: front, side: side, back: back);
    } catch (e) {
      return left(e.toString());
    }
  }
}
