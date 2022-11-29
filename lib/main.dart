import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:footballresults/pages/signup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyBE4lqYBoSCyt-4-z8ZOVJf7SAHDvzSOMc',
      appId: '1:362235501165:android:8ed45f47ea8b7667583d64',
      messagingSenderId: '362235501165',
      projectId: 'footballresults-44393',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUpPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
