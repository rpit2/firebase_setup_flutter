import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_project1/SignUpScreen.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Use the default options for your platform
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white, // Set the scaffold background color to pure white
      ),
      home: SignUpScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
