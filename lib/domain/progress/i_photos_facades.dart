import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/detail_view_photo_right_model%20copy.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/detail_view_photo_right_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_get_photo_fromDate_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_photos_lis_model.dart';

abstract class IphotosFacade {
  Future<Either<String, GetListPhotoModel>> getPhotoList({
    required int page,
  });

  Future<Either<String, Map<dynamic, dynamic>>> createPhoto({
    required int front,
    required int side,
    required int back,
  });
  Future<Either<String, DetailViewPhotoRightModel>> detailViewPhotoRightModel({
    required String direction,
    required String currentDate,
  });
  Future<Either<String, DetailViewPhotoLeftModel>> detailViewPhotoLeftModel({
    required String direction,
    required String currentDate,
  });
  Future<Either<String, GetPhotoFromDateModel>> getPhotoFromDate({
    required String date,
  });
}
