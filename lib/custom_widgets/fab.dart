import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key, required this.txt, required this.onPressed});
  final String txt;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      mini: true,
      backgroundColor: Theme.of(context).primaryColor,
      heroTag: txt,
      child: Text(
        txt,
        style: const TextStyle(color: Color(0xFFFFFFFF)),
      ),
    );
  }
}
