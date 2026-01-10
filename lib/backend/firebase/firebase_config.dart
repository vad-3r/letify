import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCvwBYPAwaTR8ZxRPhozPpAIPLl-y-nv1o",
            authDomain: "vader-ec542.firebaseapp.com",
            projectId: "vader-ec542",
            storageBucket: "vader-ec542.appspot.com",
            messagingSenderId: "399978339865",
            appId: "1:399978339865:web:c0a342aa257c267a0fd488"));
  } else {
    await Firebase.initializeApp();
  }
}
