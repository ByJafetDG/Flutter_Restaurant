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
    apiKey: 'AIzaSyAhCYoP3raHVJzvAroD8_Sdh-Pu0s1MubQ',
    appId: '1:1066676970773:web:84a737a7c51edae77a351c',
    messagingSenderId: '1066676970773',
    projectId: 'authtutorial-d966c',
    authDomain: 'authtutorial-d966c.firebaseapp.com',
    storageBucket: 'authtutorial-d966c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDlkO1VRWuTf9SqejGyXMcUaS9t-o8ctnw',
    appId: '1:1066676970773:android:41cc101c538cb6c07a351c',
    messagingSenderId: '1066676970773',
    projectId: 'authtutorial-d966c',
    storageBucket: 'authtutorial-d966c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAavzhKjaAecg46rVJqqHQEnvqw99OUCB8',
    appId: '1:1066676970773:ios:87b1f253898c8b607a351c',
    messagingSenderId: '1066676970773',
    projectId: 'authtutorial-d966c',
    storageBucket: 'authtutorial-d966c.appspot.com',
    iosBundleId: 'com.example.uiModern',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAavzhKjaAecg46rVJqqHQEnvqw99OUCB8',
    appId: '1:1066676970773:ios:87b1f253898c8b607a351c',
    messagingSenderId: '1066676970773',
    projectId: 'authtutorial-d966c',
    storageBucket: 'authtutorial-d966c.appspot.com',
    iosBundleId: 'com.example.uiModern',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAhCYoP3raHVJzvAroD8_Sdh-Pu0s1MubQ',
    appId: '1:1066676970773:web:a6cbe0a49604fe2d7a351c',
    messagingSenderId: '1066676970773',
    projectId: 'authtutorial-d966c',
    authDomain: 'authtutorial-d966c.firebaseapp.com',
    storageBucket: 'authtutorial-d966c.appspot.com',
  );
}
