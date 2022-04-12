// Created by Muhammed Tolkinov on 17-December-2021

import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:fitness_uncensored/infrastructure/common/get_or_upload_media_api.dart';
import 'package:fitness_uncensored/presentation/components/cached_image_component.dart';
import 'package:fitness_uncensored/presentation/components/snack_bar_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileAvatarComponent extends StatefulWidget {
  final ValueChanged<String> onProfileChanged;
  final String initAvatarPhoto;

  const ProfileAvatarComponent({
    Key? key,
    required this.onProfileChanged,
    this.initAvatarPhoto = '',
  }) : super(key: key);

  @override
  State<ProfileAvatarComponent> createState() => _ProfileAvatarComponentState();
}

class _ProfileAvatarComponentState extends State<ProfileAvatarComponent> {

  String _media = '';
  final GetOrUploadMediaApi _getOrUploadMedia = GetOrUploadMediaApi();
  void _getMedia() async {
    try {
      final String file = await _getOrUploadMedia.getPhotoFromDevice();
      if (file.isNotEmpty) {
        _media = file;
      }
      widget.onProfileChanged(_media);
    } catch(e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBarComponent.errorSnackBar(message: e.toString())
      );
    }

    setState(() {});
  }

  @override
  void initState() {
    _media = widget.initAvatarPhoto;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _getMedia,
      behavior: HitTestBehavior.opaque,
      child: DottedBorder(
        borderType: BorderType.Circle,
        dashPattern: const [8, 8],
        color: AppColors.primaryColor,
        child: Container(
          height: 72.h,
          width: 72.h,
          padding: EdgeInsets.all(_media.isEmpty ? 20.h : 0),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: _media.isEmpty
            ? SvgPicture.asset(AppIcons.camera)
            : _media.contains('https') ? CachedImageComponent(
              height: double.infinity,
              width: double.infinity,
              imageUrl: _media,
              borderRadius: 60.r
          ) : ClipRRect(
            borderRadius: BorderRadius.circular(60.r),
            child: Image.file(
              File(_media),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
