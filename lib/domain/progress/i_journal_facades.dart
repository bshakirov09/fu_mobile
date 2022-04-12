import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_list_model.dart';

abstract class IJournalFacades {
  Future<Either<String, GetJournalListModel>> getJournalList();
  Future<Either<String, ProgressJournalDetailModel>> getJournalDetail({
    required int id,
  });
  Future<Either<String, Unit>> addJournal({
    required ProgressJournalDetailModel progressJournalDetailModel,
  });
}
