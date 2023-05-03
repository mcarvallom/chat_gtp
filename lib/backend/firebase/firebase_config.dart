import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCxoP9If71HzJZ2igssm0dFWhDmAB6rGKA",
            authDomain: "chatgtp-2ff3c.firebaseapp.com",
            projectId: "chatgtp-2ff3c",
            storageBucket: "chatgtp-2ff3c.appspot.com",
            messagingSenderId: "864387178403",
            appId: "1:864387178403:web:7080aeb87f011c6e9a8416",
            measurementId: "G-6YN60RQJBF"));
  } else {
    await Firebase.initializeApp();
  }
}
