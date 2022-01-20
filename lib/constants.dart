import 'package:firebase_core/firebase_core.dart';

class Constants {
  static const String LOGIN_URL_WEB = 'http://localhost:8080/api/user/login';
  static const String LOGIN_URL_MOBILE = 'http://10.0.2.2:8080/api/user/login';

  static const String BASE_URL_WEB = 'http://localhost:8080/api';
  static const String BASE_URL_MOBILE = 'http://10.0.2.2:8080/api';

  static const Map<String, String> reqHeaders = {
    "Access-Control-Allow-Origin": "*", // Required for CORS support to work
    "Access-Control-Allow-Credentials":
        "true", // Required for cookies, authorization headers with HTTPS
    "Access-Control-Allow-Headers":
        "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
    "Access-Control-Allow-Methods": "POST, OPTIONS",
    "Accept": "application/json",
  };

  static const FirebaseOptions firebaseOptions = FirebaseOptions(
      apiKey: "AIzaSyAYbaJFyHukhqRy1KUsCV_v6cU7f-JW1a4",
      appId: "1:731971852643:web:b874ef23eefd99592d9b56",
      messagingSenderId: "731971852643",
      projectId: "proyectoea-fa8e5");
}
