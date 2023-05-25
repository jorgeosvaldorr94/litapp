import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAKNM_5ReGVVyXlmP8gc3GU2PVZoMIzyNs",
            authDomain: "lit-app-6d966.firebaseapp.com",
            projectId: "lit-app-6d966",
            storageBucket: "lit-app-6d966.appspot.com",
            messagingSenderId: "270698953995",
            appId: "1:270698953995:web:438b8f0f410390679df60e",
            measurementId: "G-7JRDSBJQHB"));
  } else {
    await Firebase.initializeApp();
  }
}
