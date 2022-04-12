import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/progress/i_photos_facades.dart';
import 'package:fitness_uncensored/infrastructure/progress/photo/create_photo_request.dart';
import 'package:fitness_uncensored/infrastructure/progress/photo/detail_sort_photo_left_request.dart';
import 'package:fitness_uncensored/infrastructure/progress/photo/detail_sort_photo_right_request%20copy.dart';
import 'package:fitness_uncensored/infrastructure/progress/photo/get_photo_fromDate_request.dart';
import 'package:fitness_uncensored/infrastructure/progress/photo/get_photo_list_request.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/detail_view_photo_right_model%20copy.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/detail_view_photo_right_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_get_photo_fromDate_model.dart';
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
  Future<Either<String, Map<dynamic, dynamic>>> createPhoto({
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

  @override
  Future<Either<String, DetailViewPhotoRightModel>> detailViewPhotoRightModel({
    required String direction,
    required String currentDate,
  }) async {
    try {
      final DetailSortPhotoRightRequest request = DetailSortPhotoRightRequest();
      return await request.detailPhoto(
          direction: direction, currentDate: currentDate);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, DetailViewPhotoLeftModel>> detailViewPhotoLeftModel({
    required String direction,
    required String currentDate,
  }) async {
    try {
      final DetailSortPhotoLeftRequest request = DetailSortPhotoLeftRequest();
      return await request.detailPhoto(
          direction: direction, currentDate: currentDate);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, GetPhotoFromDateModel>> getPhotoFromDate({
    required String date,
  }) async {
    try {
      final GetPhotoFromDateRequest request = GetPhotoFromDateRequest();
      return await request.getData(date: date);
    } catch (e) {
      return left(e.toString());
    }
  }
}
