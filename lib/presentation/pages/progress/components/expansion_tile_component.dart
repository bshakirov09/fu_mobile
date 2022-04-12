import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter_svg/svg.dart';

class ExpansionTileComponent1 extends StatefulWidget {
  final int? index;
  final List<String>? title;
  final List<String>? text;
  final List<String>? image;

  const ExpansionTileComponent1({
    Key? key,
    required this.title,
    required this.index,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  _ExpansionTileComponent1State createState() =>
      _ExpansionTileComponent1State();
}

class _ExpansionTileComponent1State extends State<ExpansionTileComponent1> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.index,
      itemBuilder: (context, i) {
        return _buildPlayerModelList(
          title: widget.title![i],
          text: widget.text![i],
          image: widget.image![i],
        );
      },
    );
  }

  Widget _buildPlayerModelList({
    required String? title,
    required String? text,
    required String? image,
  }) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 0),
        onExpansionChanged: (bool expanded) {
          setState(() => _customTileExpanded = expanded);
        },
        backgroundColor: AppColors.white,
        collapsedIconColor: AppColors.primaryColor,
        iconColor: AppColors.primaryColor,
        trailing: Padding(
          padding: EdgeInsets.only(right: 30.w),
          child: SvgPicture.asset(
            _customTileExpanded ? AppIcons.arrowDropUp : AppIcons.arrowDropDown,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(right: 30.w, left: 30.w),
          child: Text(
            title!,
            style: AdaptiveTheme.of(context).theme.textTheme.headline4,
          ),
        ),
        children: [
          Padding(
            padding: EdgeInsets.only(right: 30.w, left: 30.w, top: 16.h),
            child: Column(
              children: [
                Text(
                  text!,
                  style: AdaptiveTheme.of(context).theme.textTheme.bodyText2,
                ),
                SizedBox(height: 16.h),
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 322.h),
                  child: image!.isNotEmpty
                      ? Image.asset(
                          image,
                        )
                      : const SizedBox(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
