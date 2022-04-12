
import 'package:fitness_uncensored/application/progress/journalBloc/journal_bloc.dart';
import 'package:fitness_uncensored/domain/progress/journal_pages.dart';
import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/components/snack_bar_component.dart';
import 'package:fitness_uncensored/presentation/pages/auth/sign_up/local_components/progress_indicator_container_component.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';

class AddJournalPage extends StatefulWidget {
  const AddJournalPage({Key? key}) : super(key: key);

  @override
  State<AddJournalPage> createState() => _AddJournalPageState();
}

class _AddJournalPageState extends State<AddJournalPage> {
  @override
  void initState() {
    context.read<JournalBloc>().add(const JournalEvent.getPreviousPage());
    context.read<JournalBloc>().add(const JournalEvent.getPreviousPage());
    context.read<JournalBloc>().add(const JournalEvent.getPreviousPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      behavior: HitTestBehavior.opaque,
      child: BlocConsumer<JournalBloc, JournalState>(
        listener: (context, state) {
          if (state.hasError) {
            if (state.error.toString() ==
                "Journal has been already added for today") {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBarComponent.errorSnackBar(message: state.error));
              context
                  .read<JournalBloc>()
                  .add(const JournalEvent.getJournalList());

              Navigator.pop(context);
            }
          } else if (state.update) {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBarComponent.successSnackBar(message: "added_note".tr()));

            // context
            //     .read<ProgressBloc>()
            //     .add(const ProgressEvent.getJournalList());

            Navigator.pushAndRemoveUntil(
              context,
              AppRoutes.main(),
              (route) => false,
            );
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const Material(
              color: AppColors.white,
              child: AppLoadingComponent(),
            );
          } else {
            return WillPopScope(
              onWillPop: () async {
                if (state.currentPageJournalEnum ==
                    JournalPages.addOneJournal) {
                  Navigator.pop(context);
                } else {
                  context
                      .read<JournalBloc>()
                      .add(const JournalEvent.getPreviousPage());
                }
                return true;
              },
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(56.h),
                  child: AppBarComponent(
                    text: "add_journal_notes".tr(),
                    onBackButtonPressed: () {
                      if (state.currentPageJournalEnum ==
                          JournalPages.addOneJournal) {
                        Navigator.pop(context);
                      } else {
                        context.read<JournalBloc>().add(
                              const JournalEvent.getPreviousPage(),
                            );
                      }
                    },
                  ),
                ),
                body: Padding(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 16.h),
                  child: Column(
                    children: [
                      Expanded(
                        child: state.currentPageJournal,
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: 32.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(4, (index) {
                            return ProgressIndicatorContainerComponent(
                              isSelected: index <= state.progressIndicatorIndex,
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
