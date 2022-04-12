import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_fromDate_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_list_model.dart';

abstract class IJournalFacades {
  Future<Either<String, GetJournalListModel>> getJournalList({
    required int page,
  });
  Future<Either<String, ProgressJournalDetailModel>> getJournalDetail({
    required int id,
  });
  Future<Either<String, Map<dynamic, dynamic>>> addJournal({
    required ProgressJournalDetailModel progressJournalDetailModel,
  });
  Future<Either<String, GetJournalFromDateModel>> getJournalFromDate({
    required String date,
  });
}
