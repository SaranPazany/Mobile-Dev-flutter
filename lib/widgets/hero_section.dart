import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(height: 20),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1.2,
              ),
              children: [
                TextSpan(text: 'Unlock Your Potential\nwith '),
                TextSpan(
                  text: 'Worktency',
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Discover industry-leading courses designed to equip you with relevant real skills. Join our community and start your journey to success today.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 30),
          Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[100],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/main.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
