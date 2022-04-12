import 'package:bloc/bloc.dart';
import 'package:fitness_uncensored/domain/progress/journal_pages.dart';
import 'package:fitness_uncensored/domain/progress/pages.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_list_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_photos_lis_model.dart';
import 'package:fitness_uncensored/presentation/pages/progress/journal/add_journal_one_page.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress_event.dart';
part 'progress_state.dart';

part 'progress_bloc.freezed.dart';

class ProgressBloc extends Bloc<ProgressEvent, ProgressState> {
  ProgressBloc() : super(const _ProgressState());
}
