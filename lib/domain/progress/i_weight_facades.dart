import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/add_check_weight_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_get_detail_model.dart';

abstract class IWeightFacades {
  Future<Either<String, Map<dynamic, dynamic>>> getWeightProgress({
    required String duration,
  });
  Future<Either<String, AddCheckWeightModel?>> addCheckWeight();

  Future<Either<String, Map>> createWeight({
    required String weight,
  });
  Future<Either<String, Map>> updateWeight({
    required String id,
    required String weight,
  });

  Future<Either<String, GetProgressDetailModel>> getProgressDetail({
    required String id,
  });
}
