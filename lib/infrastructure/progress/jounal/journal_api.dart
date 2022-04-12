import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/progress/i_journal_facades.dart';
import 'package:fitness_uncensored/infrastructure/progress/jounal/add_journal_request.dart';
import 'package:fitness_uncensored/infrastructure/progress/jounal/get_journal_detail_request.dart';
import 'package:fitness_uncensored/infrastructure/progress/jounal/get_journal_list_request.dart';

import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_list_model.dart';

class JournalApi implements IJournalFacades {
  @override
  Future<Either<String, GetJournalListModel>> getJournalList() async {
    try {
      final GetJournalListRequest request = GetJournalListRequest();
      return await request.getData();
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, ProgressJournalDetailModel>> getJournalDetail({
    required int id,
  }) async {
    try {
      final GetJournalDetailRequest request = GetJournalDetailRequest();
      return await request.getData(id: id);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Unit>> addJournal({
    required ProgressJournalDetailModel progressJournalDetailModel,
  }) async {
    try {
      final AddJournalRequest request = AddJournalRequest();
      return await request.addJournal(
          progressJournalDetailModel: progressJournalDetailModel);
    } catch (e) {
      return left(e.toString());
    }
  }
}
