part of 'journal_bloc.dart';

@freezed
class JournalEvent with _$JournalEvent {
  const JournalEvent._();

  const factory JournalEvent.getJournalList() = _GetJournalList;

  const factory JournalEvent.addJorunal({
    ProgressJournalDetailModel? progressJournalDetailModel,
  }) = _AddJorunal;

  const factory JournalEvent.getNextPage({
    ProgressJournalDetailModel? progressJournalDetailModel,
  }) = _GetNextPage;

  const factory JournalEvent.refreshState() = _RefreshState;

  const factory JournalEvent.getPreviousPage() = _GetPreviousPage;

  const factory JournalEvent.getDetailJournal({
    required int id,
  }) = _GetDetailJournal;
}
