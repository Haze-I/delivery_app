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
    apiKey: 'AIzaSyBlL5-MmfNEZ5wAyZ3s89wxqJGwIiAE-Gg',
    appId: '1:945737372884:web:edf77e8b21393f1e98d741',
    messagingSenderId: '945737372884',
    projectId: 'foodama-84b01',
    authDomain: 'foodama-84b01.firebaseapp.com',
    storageBucket: 'foodama-84b01.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC09c7KB1oS1qe5uJlFCFt8OXLS6CfWfZc',
    appId: '1:945737372884:android:5f02a90b251958e198d741',
    messagingSenderId: '945737372884',
    projectId: 'foodama-84b01',
    storageBucket: 'foodama-84b01.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBT8LHp0k7_1OO_mr7fyN74xfAZ7Sg2Edc',
    appId: '1:945737372884:ios:13f69fbb8b97c90298d741',
    messagingSenderId: '945737372884',
    projectId: 'foodama-84b01',
    storageBucket: 'foodama-84b01.appspot.com',
    iosClientId: '945737372884-h0h3bsfdci37k9nbfmgo3ic1udof9uds.apps.googleusercontent.com',
    iosBundleId: 'com.example.deliveryApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBT8LHp0k7_1OO_mr7fyN74xfAZ7Sg2Edc',
    appId: '1:945737372884:ios:13f69fbb8b97c90298d741',
    messagingSenderId: '945737372884',
    projectId: 'foodama-84b01',
    storageBucket: 'foodama-84b01.appspot.com',
    iosClientId: '945737372884-h0h3bsfdci37k9nbfmgo3ic1udof9uds.apps.googleusercontent.com',
    iosBundleId: 'com.example.deliveryApp',
  );
}
