import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/application/progress/journalBloc/journal_bloc.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_detail_model.dart';
import 'package:fitness_uncensored/presentation/components/main_button_component.dart';
import 'package:fitness_uncensored/presentation/pages/progress/journal/components/mood_component.dart';
import 'package:fitness_uncensored/presentation/components/three_type_text_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum IntensityRate { low, medium, high }

class AddJournalOnePage extends StatefulWidget {
  const AddJournalOnePage({Key? key}) : super(key: key);

  @override
  State<AddJournalOnePage> createState() => _AddJournalOnePageState();
}

class _AddJournalOnePageState extends State<AddJournalOnePage> {
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

  IntensityRate _intensityRate = IntensityRate.low;

  bool isVisible = false;
  int _selectedIndex = -1;

  void _continue() {
    final ProgressJournalDetailModel progressJournalDetailModel =
        ProgressJournalDetailModel(
      intensityRate: _intensityRate.name,
      mood: text[_selectedIndex],
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
            text1: "Rate the ",
            text2: "intensity\n",
            text3: "of your workouts",
            textStyle1: AdaptiveTheme.of(context).theme.textTheme.headline1!,
            textStyle2: AdaptiveTheme.of(context).theme.textTheme.headline2!,
            textStyle3: AdaptiveTheme.of(context).theme.textTheme.headline1!,
          ),
          SizedBox(height: 32.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: IntensityRateComponent(
                  intensityRateType: _intensityRate,
                  onChanged: (intensityRate) =>
                      setState(() => _intensityRate = intensityRate),
                ),
              ),
            ],
          ),
          SizedBox(height: 34.h),
          ThreeTypeTextComponent(
            text1: "How was\nyour ",
            text2: "mood",
            text3: "?",
            textStyle1: AdaptiveTheme.of(context).theme.textTheme.headline1!,
            textStyle2: AdaptiveTheme.of(context).theme.textTheme.headline2!,
            textStyle3: AdaptiveTheme.of(context).theme.textTheme.headline1!,
          ),
          SizedBox(height: 24.h),
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
