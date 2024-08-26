import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatelessWidget {
  final bool isRotated;

  const AnimatedIconWidget({super.key, required this.isRotated});

  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
      turns: isRotated ? 1 : 0,
      duration: const Duration(seconds: 1),
      child: const Icon(
        Icons.rotate_right,
        size: 50,
        color: Colors.blue,
      ),
    );
  }
}
