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
    apiKey: 'AIzaSyDT7yw8ZJXEsesSXpoxaPBO_oqaC1ZrqY8',
    appId: '1:374628608606:web:3675a3c1123027a02562cf',
    messagingSenderId: '374628608606',
    projectId: 'to-do-list-masterclass',
    authDomain: 'to-do-list-masterclass.firebaseapp.com',
    storageBucket: 'to-do-list-masterclass.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAuGG15M7IovA_8JXgSot4XZTS_bmLmrvQ',
    appId: '1:374628608606:android:e2708946186b27af2562cf',
    messagingSenderId: '374628608606',
    projectId: 'to-do-list-masterclass',
    storageBucket: 'to-do-list-masterclass.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDl7uXyi2Dxq_p-JdcvbtKwPAPzECDxcCM',
    appId: '1:374628608606:ios:6584ee293f2b8e682562cf',
    messagingSenderId: '374628608606',
    projectId: 'to-do-list-masterclass',
    storageBucket: 'to-do-list-masterclass.firebasestorage.app',
    iosBundleId: 'com.fluttermasterclass.to-do-list',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDl7uXyi2Dxq_p-JdcvbtKwPAPzECDxcCM',
    appId: '1:374628608606:ios:5b72f014adce4c2d2562cf',
    messagingSenderId: '374628608606',
    projectId: 'to-do-list-masterclass',
    storageBucket: 'to-do-list-masterclass.firebasestorage.app',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDT7yw8ZJXEsesSXpoxaPBO_oqaC1ZrqY8',
    appId: '1:374628608606:web:9469cbb0a46c56f72562cf',
    messagingSenderId: '374628608606',
    projectId: 'to-do-list-masterclass',
    authDomain: 'to-do-list-masterclass.firebaseapp.com',
    storageBucket: 'to-do-list-masterclass.firebasestorage.app',
  );
}
