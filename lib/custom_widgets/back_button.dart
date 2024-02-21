import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, required this.con});

  final BuildContext con;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(con);
      },
      icon: const Icon(Icons.arrow_left),
      padding: EdgeInsets.zero,
    );
  }
}
