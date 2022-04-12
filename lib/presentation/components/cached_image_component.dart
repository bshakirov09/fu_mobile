
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:fitness_uncensored/presentation/components/app_loading_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class CachedImageComponent extends StatelessWidget {
  final double height;
  final double width;
  final String imageUrl;
  final double borderRadius;

  const CachedImageComponent({
    Key? key,
    required this.height,
    required this.width,
    required this.imageUrl,
    this.borderRadius = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: AppColors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Padding(
            padding: EdgeInsets.all(5),
            child: Center(
              child: AppLoadingComponent(showLoadingTextForIOS: false),
            ),
          ),
          errorWidget: (context, _, __) => Center(
            child: Image.asset('assets/images/default_image.jpg'),
          ),
        ),
      ),
    );
  }
}
