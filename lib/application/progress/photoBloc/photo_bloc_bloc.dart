import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/core/upload_file_types.dart';
import 'package:fitness_uncensored/domain/progress/pages.dart';
import 'package:fitness_uncensored/infrastructure/common/get_or_upload_media_api.dart';
import 'package:fitness_uncensored/infrastructure/progress/photo/photo_api.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/detail_view_photo_right_model%20copy.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/detail_view_photo_right_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_get_photo_fromDate_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_photos_lis_model.dart';
import 'package:fitness_uncensored/utils/get_it.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_bloc_event.dart';
part 'photo_bloc_state.dart';
part 'photo_bloc_bloc.freezed.dart';

class PhotoBlocBloc extends Bloc<PhotoBlocEvent, PhotoBlocState> {
  PhotoBlocBloc() : super(const _PhotoBlocState());

  int _page = 1;

  @override
  Stream<PhotoBlocState> mapEventToState(PhotoBlocEvent event) async* {
    yield* event.map(
      getPhotoList: _getPhotoList,
      getNextPhotoListPage: _getNextPhotoListPage,
      addPhoto: _addphoto,
      detailViewPhotoRight: _detailViewPhotoRight,
      detailViewPhotoLeft: _detailViewPhotoLeft,
      getPhotoFromDate: _getPhotoFromDate,
    );
  }

  Stream<PhotoBlocState> _getPhotoList(_GetPhotoList event) async* {
    _page = 1;
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      currentPage: ProgressPages.listphoto,
    );

    final Either<String, GetListPhotoModel> result =
        await getIt.get<PhotoApi>().getPhotoList(page: _page);

    yield* result.fold((l) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: Left(l).value,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        getListPhotoModel: r,
      );
    });
  }

  Stream<PhotoBlocState> _getNextPhotoListPage(
      _GetNextPhotoListPage event) async* {
    _page += 1;

    yield state.copyWith(
      currentPage: ProgressPages.listphoto,
    );

    final Either<String, GetListPhotoModel> result =
        await getIt.get<PhotoApi>().getPhotoList(page: _page);

    yield* result.fold((l) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: Left(l).value,
      );
    }, (photos) async* {
      // if (photos.next == null) {
      //   _page -= 1;
      // }

      final GetListPhotoModel data = GetListPhotoModel(
        count: photos.count,
        results: state.getListPhotoModel!.results + photos.results,
      );

      yield state.copyWith(
        isLoading: false,
        hasError: false,
        getListPhotoModel: data,
      );
    });
  }

  Stream<PhotoBlocState> _addphoto(_AddPhoto event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      // update: false,
    );

    final GetOrUploadMediaApi uploadMediaApi = GetOrUploadMediaApi();

    final List<int> images = await uploadMediaApi.uploadMedia(
      uploadFileTypes: UploadFileTypes.progress,
      images: [event.front, event.side, event.back],
    );

    final Either<String, Map<dynamic, dynamic>> result =
        await getIt.get<PhotoApi>().createPhoto(
              front: images[0],
              side: images[1],
              back: images[2],
            );
    yield* result.fold((error) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        update: false,
        error: error,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        update: true,
      );
    });
  }

  Stream<PhotoBlocState> _detailViewPhotoRight(
      _DetailViewPhotoRight event) async* {
    yield state.copyWith(
      isUpdateDetailPhotoRight: false,
      currentPage: ProgressPages.detailSortPhoto,
    );

    final Either<String, DetailViewPhotoRightModel> result =
        await getIt.get<PhotoApi>().detailViewPhotoRightModel(
              direction: event.direction,
              currentDate: event.currentDate,
            );

    yield* result.fold((error) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        isUpdateDetailPhotoRight: false,
        error: error,
      );
    }, (r) async* {
      yield state.copyWith(
          isLoading: false,
          hasError: false,
          isUpdateDetailPhotoRight: true,
          detailViewPhotoRightModel: r);
    });
  }

  Stream<PhotoBlocState> _detailViewPhotoLeft(
      _DetailViewPhotoLeft event) async* {
    yield state.copyWith(
      isUpdateDetailPhotoLeft: false,
      currentPage: ProgressPages.detailSortPhoto,
    );

    final Either<String, DetailViewPhotoLeftModel> result =
        await getIt.get<PhotoApi>().detailViewPhotoLeftModel(
              direction: event.direction,
              currentDate: event.currentDate,
            );

    yield* result.fold((error) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        isUpdateDetailPhotoLeft: false,
        error: error,
      );
    }, (r) async* {
      yield state.copyWith(
          isLoading: false,
          hasError: false,
          isUpdateDetailPhotoLeft: true,
          detailViewPhotoLeftModel: r);
    });
  }

  Stream<PhotoBlocState> _getPhotoFromDate(_GetPhotoFromDate event) async* {
    yield state.copyWith(
      isLoading: true,
    );

    final Either<String, GetPhotoFromDateModel> result =
        await getIt.get<PhotoApi>().getPhotoFromDate(date: event.date);

    yield* result.fold((l) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: l,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        getPhotoFromDateModel: r,
      );
    });
  }
}
