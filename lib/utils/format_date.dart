
// Created by Muhammed Tolkinov on 25-December-2021

import 'package:intl/intl.dart';

class FormatDate {
  const FormatDate._();

  static String mDYear({required String date}) {
    if (date == '') {
      return '';
    } else {
      try {
        return DateFormat.yMMMMd().format(DateTime.parse(date));
      } catch (e) {
        return 'Invalid date';
      }
    }
  }

  static String mmDYear({required String date}) {
    if (date == '') {
      return '';
    } else {
      try {
        return DateFormat.yMMMd().format(DateTime.parse(date));
      } catch (e) {
        return 'Invalid date';
      }
    }
  }
}
