import 'package:flutter/material.dart';

class AccentLine extends StatelessWidget {
  const AccentLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/accent.png',
          width: 100,
          height: 4,
        ),
      ],
    );
  }
}

