import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:socialinwapp_himabindur/splash_screenHBR.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF191720),
        scaffoldBackgroundColor: Color(0xFF191720),
      ),
      home: SplashScreen(),
    );
  }
}
