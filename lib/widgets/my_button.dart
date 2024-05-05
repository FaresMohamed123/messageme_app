
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key, required this.color, required this.title, this.onPressed,
  });

  final Color color;
  final String title;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        color:color,
        borderRadius: BorderRadius.circular(10),
        elevation: 5,
        child: MaterialButton(
          minWidth: 200,
          height: 42,
          onPressed: onPressed,
          child:  Text(
            title,
            style:const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
