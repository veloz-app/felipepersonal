import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBiWikm89jaKMDX6fhh6nUZ_5hyPQCYAfA",
            authDomain: "felipe-84913.firebaseapp.com",
            projectId: "felipe-84913",
            storageBucket: "felipe-84913.firebasestorage.app",
            messagingSenderId: "480099989582",
            appId: "1:480099989582:web:9aa224c8c454a27a42eb1f",
            measurementId: "G-N73ZWWVBND"));
  } else {
    await Firebase.initializeApp();
  }
}
