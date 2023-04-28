import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC18pMb1LdpTh7pvewMdc1jYiWYxYl5dsg",
            authDomain: "rent-house-7cbbb.firebaseapp.com",
            projectId: "rent-house-7cbbb",
            storageBucket: "rent-house-7cbbb.appspot.com",
            messagingSenderId: "727415567570",
            appId: "1:727415567570:web:801800e9aa29f5b46b690b"));
  } else {
    await Firebase.initializeApp();
  }
}
