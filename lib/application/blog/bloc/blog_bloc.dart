import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/blog/pages.dart';
import 'package:fitness_uncensored/infrastructure/blog/blog_api.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/blog_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/blog_list_model.dart';
import 'package:fitness_uncensored/utils/get_it.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'blog_event.dart';
part 'blog_state.dart';

part 'blog_bloc.freezed.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {
  BlogBloc() : super(const _BlogState());

  @override
  Stream<BlogState> mapEventToState(BlogEvent event) async* {
    yield* event.map(
      getBlogList: _getBlogList,
      getBlogDetail: _getBlogDetail,
      getBlogSearch: _getBlogSearch,
    );
  }

  Stream<BlogState> _getBlogList(_GetBlogList event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      currentPage: BlogPages.main,
    );

    final Either<String, List<BlogListModel>> result =
      await getIt.get<BlogApi>().getBlogList(
        page: 1,
        searchTitle: ''
      );

    yield* result.fold((error) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: error,
      );
    }, (result) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        blogListModel: result,
      );
    });
  }

  Stream<BlogState> _getBlogDetail(_GetBlogDetail event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      currentPage: BlogPages.detail,
    );

    final Either<String, BlogDetailModel> result =
        await getIt.get<BlogApi>().getBlogDetail(blogId: event.blogId);

    yield* result.fold((error) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: error,
      );
    }, (result) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        blogDetailModel: result,
      );
    });
  }

  Stream<BlogState> _getBlogSearch(_GetBlogSearch event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      currentPage: BlogPages.search,
    );

    final Either<String, List<BlogListModel>> result = await getIt
        .get<BlogApi>().getBlogList(page: 1, searchTitle: event.title
    );

    yield* result.fold((error) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: error,
      );
    }, (result) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        blogSearch: result,
      );
    });
  }
}
