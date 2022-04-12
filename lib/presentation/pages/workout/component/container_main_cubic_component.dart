import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/presentation/components/cached_image_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerMainCubeComponent extends StatelessWidget {
  final String image;
  final String title;
  const ContainerMainCubeComponent({
    required this.title,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 196.h,
      width: 148.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [
            Colors.black,
            Colors.black.withOpacity(0),
          ],
        ),
        boxShadow: const [
          BoxShadow(
            blurRadius: 6,
            color: Color.fromARGB(15, 0, 0, 0),
            // blurRadius: 0, // soften the shadow
            // spreadRadius: 6, //extend the shadow
            // offset: Offset(
            //   0, // Move to right 10  horizontally
            //   1, // Move to bottom 5 Vertically
            // ),
          )
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Opacity(
                opacity: 0.6,
                child: CachedImageComponent(
                  height: 198.h,
                  width: 148.w,
                  imageUrl: image,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AdaptiveTheme.of(context)
                      .theme
                      .textTheme
                      .headline3!
                      .copyWith(
                          color: AppColors.white, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Per week",
                  style: AdaptiveTheme.of(context)
                      .theme
                      .textTheme
                      .subtitle1!
                      .copyWith(color: AppColors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
