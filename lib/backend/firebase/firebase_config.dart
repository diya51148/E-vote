import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA6Yl4PJYbtn7ZdCNbSyZqf5GPgffjGkLc",
            authDomain: "voting-59f19.firebaseapp.com",
            projectId: "voting-59f19",
            storageBucket: "voting-59f19.appspot.com",
            messagingSenderId: "205441479093",
            appId: "1:205441479093:web:add6183efb12c3b34da9fc",
            measurementId: "G-QC2CMJ84NY"));
  } else {
    await Firebase.initializeApp();
  }
}
