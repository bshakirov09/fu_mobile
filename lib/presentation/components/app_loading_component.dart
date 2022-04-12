
// Created by Muhammed Tolkinov on 07-December-2021

import 'dart:io';

import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLoadingComponent extends StatelessWidget {
  final bool showLoadingTextForIOS;

  const AppLoadingComponent({
    Key? key,
    this.showLoadingTextForIOS = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
          ),
        ),
      );
    }
    else {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const CupertinoActivityIndicator(),

            Visibility(
              visible: showLoadingTextForIOS,
              child: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('Loading'),
              ),
            )
          ],
        ),
      );
    }
  }
}
