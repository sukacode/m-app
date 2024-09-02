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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAvdIByE03XiOIgSGG_Nh01WJKG-WhNLro',
    appId: '1:1014902866782:web:14cf364c00dc1a3a5645cf',
    messagingSenderId: '1014902866782',
    projectId: 'login-test-da004',
    authDomain: 'login-test-da004.firebaseapp.com',
    databaseURL:
        'https://login-test-da004-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'login-test-da004.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBUeM5TFFdyN2JwThwb3UbgDrM1EKDUSNk',
    appId: '1:1014902866782:android:0ffde2037bf302145645cf',
    messagingSenderId: '1014902866782',
    projectId: 'login-test-da004',
    databaseURL:
        'https://login-test-da004-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'login-test-da004.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6pgvLeUEGudpgl7NH-i3MgTe7Wh8BPic',
    appId: '1:1014902866782:ios:86d48b0fbee9f0f25645cf',
    messagingSenderId: '1014902866782',
    projectId: 'login-test-da004',
    databaseURL:
        'https://login-test-da004-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'login-test-da004.appspot.com',
    iosBundleId: 'com.example.loginTests',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6pgvLeUEGudpgl7NH-i3MgTe7Wh8BPic',
    appId: '1:1014902866782:ios:bad3e486b25111865645cf',
    messagingSenderId: '1014902866782',
    projectId: 'login-test-da004',
    databaseURL:
        'https://login-test-da004-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'login-test-da004.appspot.com',
    iosBundleId: 'com.example.loginTests.RunnerTests',
  );
}
