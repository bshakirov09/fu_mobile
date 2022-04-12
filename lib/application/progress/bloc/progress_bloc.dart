import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/progress/pages.dart';
import 'package:fitness_uncensored/infrastructure/progress/weight/weight_api.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/add_check_weight_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_get_detail_model.dart';
import 'package:fitness_uncensored/utils/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress_event.dart';
part 'progress_state.dart';

part 'progress_bloc.freezed.dart';

class ProgressBloc extends Bloc<ProgressEvent, ProgressState> {
  ProgressBloc() : super(const _ProgressState());

  @override
  Stream<ProgressState> mapEventToState(ProgressEvent event) async* {
    yield* event.map(
      getWeight: _getWeight,
      addCheck: _addCheck,
      createWeight: _createWeight,
      updateWeight: _updateWeight,
      getProgressDetail: _getProgressDetail,
    );
  }

  Stream<ProgressState> _getWeight(_GetWeight event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      currentPage: ProgressPages.listweight,
      update: false,
    );

    final Either<String, Map<dynamic, dynamic>> result = await getIt
        .get<WeightApi>()
        .getWeightProgress(duration: event.duration);

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
        weight: r,
      );
    });
  }

  Stream<ProgressState> _addCheck(_AddCheck event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      currentPage: ProgressPages.addWeight,
      update: false,
    );

    final Either<String, AddCheckWeightModel?> result =
        await getIt.get<WeightApi>().addCheckWeight();

    yield* result.fold((error) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: error,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        addCheckWeightModel: r,
      );
    });
  }

  Stream<ProgressState> _createWeight(_CreateWeight event) async* {
    yield state.copyWith(
      isLoading: true,
      currentPage: ProgressPages.addWeight,
      update: false,
    );

    final Either<String, Map> result =
        await getIt.get<WeightApi>().createWeight(weight: event.weight);

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

  Stream<ProgressState> _updateWeight(_UpdateWeight event) async* {
    yield state.copyWith(
      isLoading: true,
      currentPage: ProgressPages.addWeight,
      update: false,
    );

    final Either<String, Map> result = await getIt
        .get<WeightApi>()
        .updateWeight(id: event.id, weight: event.weight);

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

  Stream<ProgressState> _getProgressDetail(_GetProgressDetail event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      currentPage: ProgressPages.detailProgress,
    );

    final Either<String, GetProgressDetailModel> result =
        await getIt.get<WeightApi>().getProgressDetail(id: event.id);

    yield* result.fold((error) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: error,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        getProgressDetailModel: r,
      );
    });
  }
}
