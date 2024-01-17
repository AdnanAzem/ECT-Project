import 'package:flutter/material.dart';
import 'package:ect/Model/globals.dart' as globals;

class StyledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color clr;
  const StyledButton({
    super.key,
    required this.onPressed,
    required this.clr,
  });

  @override
  Widget build(BuildContext context) {
    return globals.pressedButton ? ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(500),
        ),
        padding: const EdgeInsets.all(20),
        child: const Icon(
          Icons.star,
          color: Colors.white,
          size: 24,
        ),
      ),
    ) : ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: Colors.black,
            ),
            child: const Text(""),
          );
  }
}
