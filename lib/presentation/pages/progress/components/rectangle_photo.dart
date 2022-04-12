import 'dart:io';

import 'package:fitness_uncensored/presentation/components/gradient_button_component.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:fitness_uncensored/presentation/styles/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class RectanglePhoto extends StatefulWidget {
  final String photoIcon;
  final ValueChanged<String> onChanged;

  const RectanglePhoto(
      {required this.photoIcon, required this.onChanged, Key? key})
      : super(key: key);

  @override
  State<RectanglePhoto> createState() => _RectanglePhotoState();
}

class _RectanglePhotoState extends State<RectanglePhoto> {
  File? _image;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 190.h,
        width: 155.w,
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: _image == null
            ? Stack(
                children: [
                  Center(child: SvgPicture.asset(widget.photoIcon)),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GradientButtonComponent(
                        buttonSize: 32.h,
                        iconPath: AppIcons.add,
                        onPressed: selectImage,
                      ),
                    ),
                  )
                ],
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.file(
                  _image!,
                  fit: BoxFit.cover,
                ),
              ));
  }

  selectImage() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text("From Camera"),
                onTap: () {
                  getImage(false);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text("From Gallery"),
                onTap: () {
                  getImage(true);
                },
              ),
            ],
          );
        });
  }

  getImage(bool control) async {
    final pickedFile = await picker.pickImage(
        source: control ? ImageSource.gallery : ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        widget.onChanged(pickedFile.path);
      }
    });
    Navigator.pop(context);
  }
}
