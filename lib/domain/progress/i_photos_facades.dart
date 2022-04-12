import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_photos_lis_model.dart';

abstract class IphotosFacade {
  Future<Either<String, GetListPhotoModel>> getPhotoList({
    required int page,
  });

  Future<Either<String, Unit>> createPhoto({
    required int front,
    required int side,
    required int back,
  });
}
