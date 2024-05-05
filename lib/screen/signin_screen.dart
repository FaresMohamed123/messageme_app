import 'package:flutter/material.dart';
import 'package:messageme_app/screen/chat_screen.dart';
import 'package:messageme_app/widgets/my_button.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});
 static const String routesscreen = 'signinscreen';
  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
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
            SizedBox(
              height: 180,
              child: Image.asset('images/logo.png'),
            ),
            const SizedBox(
              height: 50,
            ),
            Form(
              child: TextFormField(
                textAlign: TextAlign.center,
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Enter Your email',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Colors.orange,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.blue,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Form(
              child: TextFormField(
                textAlign: TextAlign.center,
                obscureText: true,
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Enter Your password',
                  
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Colors.orange,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.blue,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
              const SizedBox(
              height: 11,
            ),
            MyButton(
              color: Colors.orange[900]!,
              title: 'Sign in',
              onPressed: () {
                  Navigator.pushReplacementNamed(
                    context, ChatScreen.routesscreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
