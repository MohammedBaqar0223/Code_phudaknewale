import 'package:club_verse/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'show kIsWeb;

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCB5ZCGKu5v-pr4jyddkDx3JPjdguXyrZA",
          authDomain: "club-verse-e021e.firebaseapp.com",
          projectId: "club-verse-e021e",
          storageBucket: "club-verse-e021e.firebasestorage.app",
          messagingSenderId: "1077188431571",
          appId: "1:1077188431571:web:7b76a314d8b651d1d98e26"
      )
    );
  }else{
    await Firebase.initializeApp();
  }
  await Firebase.initializeApp();
 runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp
      ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}

