import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAET7OW88i_wZqBeUDZJiZOTMmrYi0d_pM",
            authDomain: "felipe-personal-3b85a.firebaseapp.com",
            projectId: "felipe-personal-3b85a",
            storageBucket: "felipe-personal-3b85a.firebasestorage.app",
            messagingSenderId: "163169091908",
            appId: "1:163169091908:web:088807ec8553faaed11711"));
  } else {
    await Firebase.initializeApp();
  }
}
