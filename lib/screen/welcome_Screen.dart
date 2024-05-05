// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:messageme_app/screen/register.dart';
import 'package:messageme_app/screen/signin_screen.dart';

import '../widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 180,
                  child: Image.asset('images/logo.png'),
                ),
                const Text(
                  'MessageMe',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color(0xff2e386b)),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            MyButton(
              color: Colors.yellow[900]!,
              title: 'Sign in',
              onPressed: () {
                Navigator.pushNamed(
                    context, SigninScreen.routesscreen);
              },
            ),
            MyButton(
              color: Colors.blue[800]!,
              title: 'Login',
              onPressed: () {
                 Navigator.pushNamed(
                    context, RegisterScreen.routesscreen);
              },
            )
          ],
        ),
      ),
    );
  }
}
