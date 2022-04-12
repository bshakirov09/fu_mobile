import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/application/progress/journalBloc/journal_bloc.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_detail_model.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/components/snack_bar_component.dart';
import 'package:fitness_uncensored/presentation/components/text_field_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Period { yes, no }

class AddJournalFourPage extends StatefulWidget {
  const AddJournalFourPage({Key? key}) : super(key: key);

  @override
  State<AddJournalFourPage> createState() => _AddJournalFourPageState();
}

class _AddJournalFourPageState extends State<AddJournalFourPage> {
  String notes = "";

  void _continue() {
    final ProgressJournalDetailModel progressJournalDetailModel =
        ProgressJournalDetailModel(notes: notes);
    if (notes.isNotEmpty) {
      context.read<JournalBloc>().add(JournalEvent.getNextPage(
            progressJournalDetailModel: progressJournalDetailModel,
          ));
      context.read<JournalBloc>().add(
            JournalEvent.addJorunal(
                progressJournalDetailModel: progressJournalDetailModel),
          );
          
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBarComponent.errorSnackBar(
              message: "this_field_can_not_be_empty".tr()));
    }

    // Navigator.pushAndRemoveUntil(
    //     context, AppRoutes.progressMainPage(), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "your_notes".tr(),
            style: AdaptiveTheme.of(context).theme.textTheme.headline1,
          ),
          SizedBox(height: 16.h),
          TextFieldComponent(
            minLines: 4,
            maxLines: 4,
            hint: "write_here".tr(),
            onChanged: (v) {
              setState(() {
                notes = v;
              });
            },
          ),
          const Spacer(),
          MainButtonComponent(
            margin: EdgeInsets.only(bottom: 16.h, right: 30.w, left: 30.w),
            text: 'save'.tr(),
            onPressed: _continue,
          ),
        ],
      ),
    );
  }
}
