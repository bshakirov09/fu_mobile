// Created by Muhammed Tolkinov on 25-December-2021

import 'package:url_launcher/url_launcher.dart';

Future<void> urlLaunch({required String url}) async {
  if (await canLaunch(url)) {
    await launch(url);
  }
  else {

  }
}
