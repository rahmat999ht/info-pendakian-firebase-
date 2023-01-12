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
    apiKey: 'AIzaSyBBhD0XaqjEr3oK74bhseLqiEHcssY0n6w',
    appId: '1:113745340967:web:07125c8fdfe26500eb3c02',
    messagingSenderId: '113745340967',
    projectId: 'info-pendakian-49578',
    authDomain: 'info-pendakian-49578.firebaseapp.com',
    storageBucket: 'info-pendakian-49578.appspot.com',
    measurementId: 'G-RC9518Q8G8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAK3gpfponXRXWE597vHPvnpQM-Gi29QJI',
    appId: '1:113745340967:android:9509154cca3245c9eb3c02',
    messagingSenderId: '113745340967',
    projectId: 'info-pendakian-49578',
    storageBucket: 'info-pendakian-49578.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCY0lat0VbY-5xkom1eHAIfRKrJNHRRiUQ',
    appId: '1:113745340967:ios:469e73535c0c838aeb3c02',
    messagingSenderId: '113745340967',
    projectId: 'info-pendakian-49578',
    storageBucket: 'info-pendakian-49578.appspot.com',
    iosClientId: '113745340967-ibb60hgdktpqg6213bc1uectl8al0c1q.apps.googleusercontent.com',
    iosBundleId: 'com.example.professional',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCY0lat0VbY-5xkom1eHAIfRKrJNHRRiUQ',
    appId: '1:113745340967:ios:469e73535c0c838aeb3c02',
    messagingSenderId: '113745340967',
    projectId: 'info-pendakian-49578',
    storageBucket: 'info-pendakian-49578.appspot.com',
    iosClientId: '113745340967-ibb60hgdktpqg6213bc1uectl8al0c1q.apps.googleusercontent.com',
    iosBundleId: 'com.example.professional',
  );
}
