

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/wokout_main_list_model.dart';
import 'package:fitness_uncensored/presentation/components/cached_image_component.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderComponent extends StatefulWidget {
  final List<WorkoutListModel> workoutListModel;
  const SliderComponent({required this.workoutListModel, Key? key})
      : super(key: key);

  @override
  _SliderComponentState createState() => _SliderComponentState();
}

class _SliderComponentState extends State<SliderComponent> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.workoutListModel
        .map((item) => GestureDetector(
              onTap: () => Navigator.push(
                context,
                AppRoutes.workoutSplit(
                  id: item.id,
                  title: item.title,
                  description: item.description
                )
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  child: Stack(
                    children: <Widget>[
                      CachedImageComponent(
                        height: 408.h,
                        width: 298.w,
                        imageUrl: item.image,
                        borderRadius: 20.r,
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 36.h, horizontal: 20.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.title,
                                style: AdaptiveTheme.of(context)
                                    .theme
                                    .textTheme
                                    .headline3!
                                    .copyWith(color: AppColors.white),
                              ),
                              SizedBox(height: 2.h),
                              Text(item.description,
                                  style: AdaptiveTheme.of(context)
                                      .theme
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(color: AppColors.white)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ))
        .toList();

    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
            height: 406.h,
            autoPlay: false,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            initialPage: 0,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(
                () {
                  _current = index;
                },
              );
            },
          ),
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.workoutListModel.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 10.w : 5.w,
                height: _current == entry.key ? 10.w : 5.w,
                margin:
                    EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 7.5.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? AppColors.white
                          : AppColors.primaryColor)
                      .withOpacity(_current == entry.key ? 0 : 0.9),
                  border: Border.all(
                    color: AppColors.primaryColor,
                    width: 1.5.w,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
