import 'package:flutter/material.dart';

class GradientLetter extends StatelessWidget {
  const GradientLetter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFFFF9002),
      ),
      child: Container(
        child: FractionallySizedBox(
          widthFactor: 2 / 3,
          heightFactor: 2 / 3,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: const LinearGradient(
                  colors: [Color.fromRGBO(255, 144, 2, 0), Color(0xFFE48000)],
                begin: Alignment.topLeft,

              ),
            ),
          ),
        ),
      ),
    );
  }
}
