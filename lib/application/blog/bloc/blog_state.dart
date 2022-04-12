part of 'blog_bloc.dart';

@freezed
class BlogState with _$BlogState {
  const BlogState._();

  const factory BlogState({
    @Default(true) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String error,
    @Default([]) List<BlogListModel> blogListModel,
    @Default([]) List<BlogListModel> blogSearch,
    @Default(null) BlogDetailModel? blogDetailModel,
    @Default(BlogPages.main) BlogPages currentPage,
  }) = _BlogState;
}
