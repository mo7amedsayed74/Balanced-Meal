import 'package:flutter/material.dart';

class CounterButtons extends StatelessWidget {
  const CounterButtons({
    super.key,
    required this.numberOfPiece,
    required this.onPressedPlus,
    required this.onPressedMinus,
  });

  final int numberOfPiece;
  final void Function()? onPressedPlus;
  final void Function()? onPressedMinus;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressedMinus,
          icon: const Icon(Icons.remove),
          padding: EdgeInsets.zero,
          style: IconButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: const Color(0xFFFFFFFF),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 4,
          ),
          child: Text(
            '$numberOfPiece',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        IconButton(
          onPressed: onPressedPlus,
          icon: const Icon(Icons.add),
          padding: EdgeInsets.zero,
          style: IconButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: const Color(0xFFFFFFFF),
          ),
        ),

      ],
    );
  }
}
