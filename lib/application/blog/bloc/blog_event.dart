part of 'blog_bloc.dart';

@freezed
class BlogEvent with _$BlogEvent {
  const BlogEvent._();

  const factory BlogEvent.getBlogList() = _GetBlogList;

  const factory BlogEvent.getBlogDetail({
    required int blogId,
  }) = _GetBlogDetail;

  const factory BlogEvent.getBlogSearch({
    required String title,
  }) = _GetBlogSearch;
}
