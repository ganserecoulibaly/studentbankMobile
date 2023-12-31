// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBt5YtvnrGl6YKqrx-GwBU8pI6Wez57MQE',
    appId: '1:801030716432:android:09b6923781b1422b279e95',
    messagingSenderId: '801030716432',
    projectId: 'studentbank-8134c',
    storageBucket: 'studentbank-8134c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA7KxuHQDqwK3Ja12oruqLRCgAMgwGI3PU',
    appId: '1:801030716432:ios:ba06236b01c2d0fd279e95',
    messagingSenderId: '801030716432',
    projectId: 'studentbank-8134c',
    storageBucket: 'studentbank-8134c.appspot.com',
    iosBundleId: 'com.example.studentbankmobile',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA7KxuHQDqwK3Ja12oruqLRCgAMgwGI3PU',
    appId: '1:801030716432:ios:4274200250d1369d279e95',
    messagingSenderId: '801030716432',
    projectId: 'studentbank-8134c',
    storageBucket: 'studentbank-8134c.appspot.com',
    iosBundleId: 'com.example.studentbankmobile.RunnerTests',
  );
}
