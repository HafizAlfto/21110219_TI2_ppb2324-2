// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCFUPVLAcpFyuk5SaBGghAMGzyPIIBQIjo',
    appId: '1:322120928912:web:162c3be27914451b889215',
    messagingSenderId: '322120928912',
    projectId: 'praktikum9-919fd',
    authDomain: 'praktikum9-919fd.firebaseapp.com',
    storageBucket: 'praktikum9-919fd.appspot.com',
    measurementId: 'G-S8GRW6LTSL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAb16u-8p1mDttFFNe8EYJ9Gxy3_pw7Rzk',
    appId: '1:322120928912:android:2c3988e16f741902889215',
    messagingSenderId: '322120928912',
    projectId: 'praktikum9-919fd',
    storageBucket: 'praktikum9-919fd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB3Ji9vcxjNPur3UKEb2aAZzj5mui1KRgk',
    appId: '1:322120928912:ios:c8f01fb6767309ce889215',
    messagingSenderId: '322120928912',
    projectId: 'praktikum9-919fd',
    storageBucket: 'praktikum9-919fd.appspot.com',
    iosBundleId: 'com.example.paktikum9',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB3Ji9vcxjNPur3UKEb2aAZzj5mui1KRgk',
    appId: '1:322120928912:ios:c8f01fb6767309ce889215',
    messagingSenderId: '322120928912',
    projectId: 'praktikum9-919fd',
    storageBucket: 'praktikum9-919fd.appspot.com',
    iosBundleId: 'com.example.paktikum9',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCFUPVLAcpFyuk5SaBGghAMGzyPIIBQIjo',
    appId: '1:322120928912:web:c7e8459ff381e9d3889215',
    messagingSenderId: '322120928912',
    projectId: 'praktikum9-919fd',
    authDomain: 'praktikum9-919fd.firebaseapp.com',
    storageBucket: 'praktikum9-919fd.appspot.com',
    measurementId: 'G-2FNMD840WH',
  );
}
