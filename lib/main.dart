import 'package:chat_app/screens/auth_screen.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat',
      theme: ThemeData(
        backgroundColor: Color(0xFF00C853),
        accentColor: Color(0xFF00C853),
        primarySwatch: Colors.green,
        accentColorBrightness: Brightness.dark,
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Color(0xFF00C853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: StreamBuilder(
      //   stream: FirebaseAuth.instance.onAuthStateChanged,
      //   builder: (ctx, userSnapshot) {
      //     if (userSnapshot.hasData) {
      //       return ChatScreen();
      //     }
      //     return AuthScreen();
      //   },
      // ),
      home: SplashScreen(),
    );
  }
}
