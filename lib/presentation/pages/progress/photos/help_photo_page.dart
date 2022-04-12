import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/presentation/components/three_type_text_component.dart';
import 'package:fitness_uncensored/presentation/pages/progress/components/expansion_tile_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../routes/app_routes.dart';
import '../../../styles/app_colors.dart';

class HelpPhotoPage extends StatelessWidget {
  final List<String> _title = [
    "Show your shape",
    "Wear the same clothes",
    "Use a plain wall",
    "Take a full-body photo at eye level",
    "Shoot from 3 angles",
    "Stand in natural light",
    "Maintain good posture",
  ];
  final List<String> _text = [
    "Make sure there is no clutter, patterns, bright colors or distracting objects in the background. Also, use the same spot for each time you take your progress shots.",
    "Make sure there is no clutter, patterns, bright colors or distracting objects in the background. Also, use the same spot for each time you take your progress shots.",
    "Make sure there is no clutter, patterns, bright colors or distracting objects in the background. Also, use the same spot for each time you take your progress shots.",
    "Make sure there is no clutter, patterns, bright colors or distracting objects in the background. Also, use the same spot for each time you take your progress shots.",
    "Make sure there is no clutter, patterns, bright colors or distracting objects in the background. Also, use the same spot for each time you take your progress shots.",
    "Make sure there is no clutter, patterns, bright colors or distracting objects in the background. Also, use the same spot for each time you take your progress shots.",
    "Make sure there is no clutter, patterns, bright colors or distracting objects in the background. Also, use the same spot for each time you take your progress shots.",
  ];
  final List<String> _image = [
    "assets/images/CORRECT_BACKGROUND_INCORRECT_BACKGROUND_NEW-e1528445528479 1.png",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  HelpPhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: AppBar(
          foregroundColor: AppColors.primaryColor,
          backgroundColor: AppColors.white,
          elevation: 4,
          shadowColor: AppColors.white.withOpacity(0.4),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 16.h),
        child: Column(
          children: [
            ThreeTypeTextComponent(
              text1: "How to Take\n",
              text2: "Before/After ",
              text3: "Pictures",
              textStyle1: AdaptiveTheme.of(context).theme.textTheme.headline1!,
              textStyle2: AdaptiveTheme.of(context).theme.textTheme.headline2!,
              textStyle3: AdaptiveTheme.of(context).theme.textTheme.headline1!,
            ),
            SizedBox(height: 32.h),
            Expanded(
              child: ExpansionTileComponent1(
                title: _title,
                text: _text,
                index: 7,
                image: _image,
              ),
            )
          ],
        ),
      ),
    );
  }
}
