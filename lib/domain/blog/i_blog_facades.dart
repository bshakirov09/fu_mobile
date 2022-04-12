import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/blog_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/blog_list_model.dart';

abstract class IBlogFacade {
  Future<Either<String, List<BlogListModel>>> getBlogList({
    required int page,
    required String searchTitle,
  });

  Future<Either<String, BlogDetailModel>> getBlogDetail({
    required int blogId,
  });
}
