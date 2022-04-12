// Created by Muhammed Tolkinov on 08-December-2021

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fitness_uncensored/presentation/components/cached_image_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';

class GradientButtonComponent extends StatelessWidget {
  final String iconPath;
  final String imageUrl;
  final bool isNetworkImage;
  final VoidCallback onPressed;
  final double buttonSize;

  const GradientButtonComponent({
    Key? key,
    required this.onPressed,
    required this.buttonSize,
    this.iconPath = '',
    this.isNetworkImage = false,
    this.imageUrl = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        height: buttonSize + 8,
        width: buttonSize + 8,
        child: Stack(
          children: [

            _backgroundContainer(
              backgroundColor: AppColors.secondaryColor,
              isRight: false
            ),

            _backgroundContainer(
              backgroundColor: AppColors.tertiaryVariantColor,
              isRight: true
            ),

            Center(
              child: Container(
                width: buttonSize - 5,
                height: buttonSize,
                padding: EdgeInsets.all(isNetworkImage ? 0 : buttonSize / 4.3),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor
                ),
                child: isNetworkImage ? CachedImageComponent(
                  imageUrl: imageUrl,
                  height: double.infinity,
                  width: double.infinity,
                  borderRadius: 100,
                ) :
                SvgPicture.asset(
                  iconPath,
                  color: AppColors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _backgroundContainer({
    required Color backgroundColor,
    required bool isRight,
  }) {
    return Center(
      child: Container(
        height: buttonSize - 3,
        width: buttonSize - 3,
        margin: EdgeInsets.only(
          right: isRight ? 0 : 3,
          left: isRight ? 3 : 0
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle
        ),
      ),
    );
  }
}
