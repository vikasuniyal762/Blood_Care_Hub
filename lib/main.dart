import 'package:blood_care_hub/presentation/views/homepage/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: 'AIzaSyCngf1dcBLH1JYVejrfASJ9O9rgxHmHLbg',
          appId: '1:1067487907753:android:55df106d67d7bd7f407eb8',
          messagingSenderId: '1067487907753',
          projectId: 'bloodcarehub',
          // databaseURL: 'https://medongo-tabapp.firebaseio.com',
          // storageBucket: 'medongo-tabapp.appspot.com',
        ));
    runApp(const InitializationOfApp());
  } catch (e) {
    print('Error initializing Firebase: $e');
  }
}

class InitializationOfApp extends StatelessWidget {
  const InitializationOfApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
