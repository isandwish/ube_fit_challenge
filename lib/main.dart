import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ube_fit_challenge/firebase_options.dart';
// import 'firebase_options.dart';

import 'package:ube_fit_challenge/screens/landingpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ube Fit Challenge',
      home: LandingPage(),
    );
  }
}
