import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
 static const String routesscreen = 'chatscreen';
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: Row(
          children: [
            Image.asset('images/logo.png', height: 25),
            const SizedBox(width: 10),
            const Text('Chat')
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.close))],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.orange[800]!,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20
                        ),
                        hintText: 'Write your message here...',
                      ),
                    ),
                  ),
                  TextButton(onPressed: 
                  () {
                    
                  }, child: Text('send',style: TextStyle(color: Colors.orange[800],fontSize: 18,
                  fontWeight: FontWeight.bold),))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
