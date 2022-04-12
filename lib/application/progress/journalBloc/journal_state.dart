part of 'journal_bloc.dart';

@freezed
class JournalState with _$JournalState {
  const JournalState._();

  const factory JournalState({
    @Default(true) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String error,
    @Default(false) bool update,
    @Default(false) bool updateFromDate,
    @Default(null) GetJournalListModel? getJournalList,
    @Default(null) GetJournalFromDateModel? getJournalFromDateModel,
    @Default(AddJournalOnePage()) Widget currentPageJournal,
    @Default(JournalPages.addOneJournal) JournalPages currentPageJournalEnum,
    @Default(0) int progressIndicatorIndex,
    @Default(null) ProgressJournalDetailModel? progressJournalDetailModel,
    @Default(ProgressPages.listjournal) ProgressPages currentPage,
  }) = _JournalState;
}
