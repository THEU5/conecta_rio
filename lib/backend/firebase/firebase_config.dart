import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDx5PTgbALjWquvoCeiRGVnQHUGGi40_hc",
            authDomain: "conect-rio-995ea.firebaseapp.com",
            projectId: "conect-rio-995ea",
            storageBucket: "conect-rio-995ea.appspot.com",
            messagingSenderId: "1021821238040",
            appId: "1:1021821238040:web:875aba938d656dd231bc6d"));
  } else {
    await Firebase.initializeApp();
  }
}
