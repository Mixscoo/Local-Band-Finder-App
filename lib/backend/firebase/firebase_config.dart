import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD3VbG4miP5PlJgIfYcgI-tHr_Y2vIQEtM",
            authDomain: "local-band-finder-app-25uf20.firebaseapp.com",
            projectId: "local-band-finder-app-25uf20",
            storageBucket: "local-band-finder-app-25uf20.firebasestorage.app",
            messagingSenderId: "351136579757",
            appId: "1:351136579757:web:eb7081c3bf721b9c454624"));
  } else {
    await Firebase.initializeApp();
  }
}
