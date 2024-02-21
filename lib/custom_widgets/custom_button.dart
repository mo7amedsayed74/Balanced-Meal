import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.finish = true,
  });

  final bool finish;
  final String text;
  final void Function()? onPressed;

  final Color? backGroundColor = const Color(0xFFEAECF0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: finish ? Theme.of(context).primaryColor : backGroundColor,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
            color: finish ? const Color(0xFFFFFFFF) : Colors.grey,
          ),
        ),
      ),
    );
  }
}
