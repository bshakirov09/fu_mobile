// Created by Muhammed Tolkinov on 12-December-2021

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:fitness_uncensored/services/firebase_service/firebase_service.dart';
import 'package:path_provider/path_provider.dart';

import 'get_it.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  await FirebaseService.getFirebaseToken();

  await EasyLocalization.ensureInitialized();

  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);

  setupGetIt();
}
