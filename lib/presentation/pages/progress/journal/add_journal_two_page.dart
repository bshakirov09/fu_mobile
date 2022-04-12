import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/application/progress/journalBloc/journal_bloc.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_detail_model.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/components/three_type_text_component.dart';
import 'package:fitness_uncensored/presentation/pages/progress/journal/components/period_switch_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Period { yes, no }

class AddJournalTwoPage extends StatefulWidget {
  const AddJournalTwoPage({Key? key}) : super(key: key);

  @override
  State<AddJournalTwoPage> createState() => _AddJournalTwoPageState();
}

class _AddJournalTwoPageState extends State<AddJournalTwoPage> {
  List<String> faces = [
    AppIcons.bad,
    AppIcons.sad,
    AppIcons.okay,
    AppIcons.good,
    AppIcons.amazing,
  ];
  List<String> text = [
    "bad",
    "sad",
    "okay",
    "good",
    "amazing",
  ];

  Period _period = Period.yes;

  bool isVisible = false;
  int _selectedIndex = -1;

  void _continue() {
    final ProgressJournalDetailModel progressJournalDetailModel =
        ProgressJournalDetailModel(
      digestion: text[_selectedIndex],
      period: _period.toString() == "yes" ? true : false,
    );
    context.read<JournalBloc>().add(JournalEvent.getNextPage(
          progressJournalDetailModel: progressJournalDetailModel,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ThreeTypeTextComponent(
            text1: "How was your\n",
            text2: "digestion",
            text3: "?",
            textStyle1: AdaptiveTheme.of(context).theme.textTheme.headline1!,
            textStyle2: AdaptiveTheme.of(context).theme.textTheme.headline2!,
            textStyle3: AdaptiveTheme.of(context).theme.textTheme.headline1!,
          ),
          SizedBox(height: 32.h),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: faces.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_selectedIndex == index) {
                        _selectedIndex = -1;
                      } else {
                        _selectedIndex = index;
                      }
                    });
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset(faces[index]),
                      SizedBox(height: 16.h),
                      Text(
                        text[index].tr(),
                        style: index == _selectedIndex
                            ? AdaptiveTheme.of(context)
                                .theme
                                .textTheme
                                .headline4!
                                .copyWith(fontSize: 14)
                            : AdaptiveTheme.of(context)
                                .theme
                                .textTheme
                                .subtitle2,
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 8.w);
              },
            ),
          ),
          SizedBox(height: 32.h),
          Text(
            "period".tr(),
            style: AdaptiveTheme.of(context).theme.textTheme.headline1,
          ),
          SizedBox(height: 26.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: PeriodSwitchComponent(
                  periodTye: _period,
                  onChanged: (period) => setState(() => _period = period),
                ),
              ),
            ],
          ),
          const Spacer(),
          const Spacer(),
          MainButtonComponent(
            margin: EdgeInsets.only(bottom: 16.h, right: 30.w, left: 30.w),
            text: 'continue'.tr(),
            onPressed: _continue,
          ),
        ],
      ),
    );
  }
}
