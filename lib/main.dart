import 'package:flutter/material.dart';
import 'package:messageme_app/screen/chat_screen.dart';
import 'package:messageme_app/screen/register.dart';
import 'package:messageme_app/screen/signin_screen.dart';
import 'package:messageme_app/screen/welcome_Screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MessageMe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
      routes: {
        RegisterScreen.routesscreen: (context) => const RegisterScreen(),
        SigninScreen.routesscreen: (context) => const SigninScreen(),
        ChatScreen.routesscreen: (context) => const ChatScreen(),
      },
    );
  }
}
