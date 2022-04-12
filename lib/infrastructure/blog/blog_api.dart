import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/blog/i_blog_facades.dart';
import 'package:fitness_uncensored/infrastructure/blog/get_blog_detail_request.dart';
import 'package:fitness_uncensored/infrastructure/blog/get_blog_list_request.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/blog_list_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/blog_detail_model.dart';

class BlogApi implements IBlogFacade {
  @override
  Future<Either<String, List<BlogListModel>>> getBlogList({
    required int page,
    required String searchTitle,
  }) async {
    try {
      final GetBlogListRequest request = GetBlogListRequest();
      return await request.getData(page: page, searchTitle: searchTitle);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, BlogDetailModel>> getBlogDetail({
    required int blogId,
  }) async {
    try {
      final GetBlogDetailRequest request = GetBlogDetailRequest();
      return await request.getData(blogId: blogId);
    } catch (e) {
      return left(e.toString());
    }
  }
}
