import 'package:flutter/material.dart';

class NeuButton extends StatelessWidget {
  const NeuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
          color: Colors.deepPurple[300],
          shape: BoxShape.circle,
          boxShadow: [
            // darker shadow at bottom right
            BoxShadow(
              color: Colors.deepPurple.shade700,
              offset: Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            // lighter shadow at top left
            BoxShadow(
              color: Colors.deepPurple.shade200,
              offset: Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple.shade200,
              Colors.deepPurple.shade400,
            ],
            stops: const [
              0.1,
              0.9,
            ],
          )),
    );
  }
}
