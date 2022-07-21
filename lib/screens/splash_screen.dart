import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:chat_app/screens/auth_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/whatsapp_green_outlined.png',
              scale: 3,
            ),
            SizedBox(
              height: 300,
            ),
            Text(
              'from',
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/assets/meta_green_outlined.png',
                  scale: 3,
                ),
                Text(
                  'Meta',
                  style: TextStyle(
                    color: Colors.green[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                    fontFamily: 'Dongle',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      nextScreen: StreamBuilder(
        stream: FirebaseAuth.instance.onAuthStateChanged,
        builder: (ctx, userSnapshot) {
          if (userSnapshot.hasData) {
            return ChatScreen();
          }
          return AuthScreen();
        },
      ),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white,
      duration: 1000,
      splashIconSize: double.infinity,
    );
  }
}
