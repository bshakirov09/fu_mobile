import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/progress/i_weight_facades.dart';
import 'package:fitness_uncensored/infrastructure/progress/weight/add_weight_request.dart';
import 'package:fitness_uncensored/infrastructure/progress/weight/create_weight_request.dart';
import 'package:fitness_uncensored/infrastructure/progress/weight/get_progress_detail_request.dart';
import 'package:fitness_uncensored/infrastructure/progress/weight/get_weight_requst.dart';
import 'package:fitness_uncensored/infrastructure/progress/weight/update_weight_request.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/add_check_weight_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_get_detail_model.dart';

class WeightApi implements IWeightFacades {
  @override
  Future<Either<String, Map<dynamic, dynamic>>> getWeightProgress({
    required String duration,
  }) async {
    try {
      final GetWeightRequest request = GetWeightRequest();
      return await request.getData(duration: duration);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, AddCheckWeightModel?>> addCheckWeight() async {
    try {
      final AddWeightRequest request = AddWeightRequest();
      return await request.getData();
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Map>> createWeight({
    required String weight,
  }) async {
    try {
      final CreateWeightRequest request = CreateWeightRequest();
      return await request.getData(weight: weight);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Map>> updateWeight({
    required String id,
    required String weight,
  }) async {
    try {
      final UpdateWeightRequest request = UpdateWeightRequest();
      return await request.getData(weight: weight, id: id);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, GetProgressDetailModel>> getProgressDetail({
    required String id,
  }) async {
    try {
      final GetProgressDetailRequest request = GetProgressDetailRequest();
      return await request.getData(id: id);
    } catch (e) {
      return left(e.toString());
    }
  }
}
