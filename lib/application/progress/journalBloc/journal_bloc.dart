import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/progress/journal_pages.dart';
import 'package:fitness_uncensored/domain/progress/pages.dart';
import 'package:fitness_uncensored/infrastructure/progress/jounal/journal_api.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_fromDate_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_list_model.dart';
import 'package:fitness_uncensored/presentation/pages/progress/journal/add_journal_four_page.dart';
import 'package:fitness_uncensored/presentation/pages/progress/journal/add_journal_one_page.dart';
import 'package:fitness_uncensored/presentation/pages/progress/journal/add_journal_three_page.dart';
import 'package:fitness_uncensored/presentation/pages/progress/journal/add_journal_two_page.dart';
import 'package:fitness_uncensored/utils/get_it.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'journal_event.dart';
part 'journal_state.dart';
part 'journal_bloc.freezed.dart';

class JournalBloc extends Bloc<JournalEvent, JournalState> {
  JournalBloc() : super(const _JournalState());

  ProgressJournalDetailModel? progressJournalDetailModel =
      ProgressJournalDetailModel();

  int _page = 1;

  @override
  Stream<JournalState> mapEventToState(JournalEvent event) async* {
    yield* event.map(
      getNextPage: _getNextPage,
      refreshState: (event) async* {
        // progressJournalDetailModel = ProgressJournalDetailModel();
        JournalPages.addOneJournal;
      },
      addJorunal: _addJournal,
      getPreviousPage: _getPreviousPage,
      getJournalList: _getJournalList,
      getNextJournalList: _getNextJournalList,
      getDetailJournal: _getDetailJournal,
      getJournalFromDate: _getJournalFromDate,
    );
  }

  Stream<JournalState> _getNextPage(_GetNextPage event) async* {
    if (event.progressJournalDetailModel != null) {
      progressJournalDetailModel = progressJournalDetailModel?.copyWith(
        intensityRate: event.progressJournalDetailModel?.intensityRate,
        mood: event.progressJournalDetailModel?.mood,
        digestion: event.progressJournalDetailModel?.digestion,
        period: event.progressJournalDetailModel?.period,
        waterGoalDays: event.progressJournalDetailModel?.waterGoalDays,
        stepGoalDays: event.progressJournalDetailModel?.stepGoalDays,
        notes: event.progressJournalDetailModel?.notes,
      );
    }

    switch (state.currentPageJournalEnum) {
      case JournalPages.addOneJournal:
        yield state.copyWith(
          currentPageJournal: const AddJournalTwoPage(),
          currentPageJournalEnum: JournalPages.addTwoJournal,
          progressIndicatorIndex: 1,
        );
        break;
      case JournalPages.addTwoJournal:
        yield state.copyWith(
          currentPageJournal: const AddJournalThreePage(),
          currentPageJournalEnum: JournalPages.addThreeJournal,
          progressIndicatorIndex: 2,
        );
        break;
      case JournalPages.addThreeJournal:
        yield state.copyWith(
          currentPageJournal: const AddJournalFourPage(),
          currentPageJournalEnum: JournalPages.addFourJournal,
          progressIndicatorIndex: 3,
        );
        break;
      case JournalPages.addFourJournal:
        break;
    }
  }

  Stream<JournalState> _addJournal(_AddJorunal event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      update: false,
    );

    final Either<String, Map<dynamic, dynamic>> result = await getIt
        .get<JournalApi>()
        .addJournal(progressJournalDetailModel: progressJournalDetailModel!);

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
        update: true,
      );
    });
  }

  Stream<JournalState> _getPreviousPage(_GetPreviousPage event) async* {
    switch (state.currentPageJournalEnum) {
      case JournalPages.addOneJournal:
        yield state;
        break;
      case JournalPages.addTwoJournal:
        yield state.copyWith(
            currentPageJournalEnum: JournalPages.addOneJournal,
            progressIndicatorIndex: 0,
            currentPageJournal: const AddJournalOnePage());
        break;
      case JournalPages.addThreeJournal:
        yield state.copyWith(
          currentPageJournal: const AddJournalTwoPage(),
          currentPageJournalEnum: JournalPages.addTwoJournal,
          progressIndicatorIndex: 1,
        );
        break;
      case JournalPages.addFourJournal:
        yield state.copyWith(
          currentPageJournal: const AddJournalThreePage(),
          currentPageJournalEnum: JournalPages.addThreeJournal,
          progressIndicatorIndex: 2,
        );
        break;
    }
  }

  Stream<JournalState> _getJournalList(_GetJournalList event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      currentPage: ProgressPages.listjournal,
    );

    final Either<String, GetJournalListModel> result =
        await getIt.get<JournalApi>().getJournalList(page: _page);

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
        getJournalList: r,
      );
    });
  }

  Stream<JournalState> _getNextJournalList(_GetNextJournalList event) async* {
    _page += 1;

    yield state.copyWith(
      currentPage: ProgressPages.listjournal,
    );

    final Either<String, GetJournalListModel> result =
        await getIt.get<JournalApi>().getJournalList(page: _page);

    yield* result.fold((l) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: Left(l).value,
      );
    }, (journals) async* {
      // if (photos.next == null) {
      //   _page -= 1;
      // }

      final GetJournalListModel data = GetJournalListModel(
        count: journals.count,
        results: state.getJournalList!.results + journals.results,
      );

      yield state.copyWith(
        isLoading: false,
        hasError: false,
        getJournalList: data,
      );
    });
  }

  Stream<JournalState> _getDetailJournal(_GetDetailJournal event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
    );

    final Either<String, ProgressJournalDetailModel> result =
        await getIt.get<JournalApi>().getJournalDetail(id: event.id);

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
        progressJournalDetailModel: Right(r).value,
      );
    });
  }

  Stream<JournalState> _getJournalFromDate(_GetJournalFromDate event) async* {
    yield state.copyWith(
      getJournalFromDateModel: null,
      isLoading: true,
    );

    final Either<String, GetJournalFromDateModel> result =
        await getIt.get<JournalApi>().getJournalFromDate(date: event.date);

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
        getJournalFromDateModel: r,
      );
    });
  }
}
