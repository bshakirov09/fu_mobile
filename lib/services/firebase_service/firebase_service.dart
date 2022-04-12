
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseService {

  static String _token = '';

  static String get token => _token;

  static Future<void> getFirebaseToken() async {
    try {
      final FirebaseMessaging messaging = FirebaseMessaging.instance;
      _token = (await messaging.getToken())!;
    } catch (_) {}
  }
}
