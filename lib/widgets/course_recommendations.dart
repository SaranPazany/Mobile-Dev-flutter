import 'package:flutter/material.dart';

class CourseRecommendations extends StatelessWidget {
  const CourseRecommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          _buildRecommendationCard(
              'Expert Instructor', Colors.green, 'assets/images/expert.png'),
          const SizedBox(width: 12),
          _buildRecommendationCard(
              'Flexible Learning', Colors.blue, 'assets/images/flexible.png'),
          const SizedBox(width: 12),
          _buildRecommendationCard(
              'Hands-on Learning', Colors.purple, 'assets/images/handon.png'),
        ],
      ),
    );
  }

  Widget _buildRecommendationCard(String title, Color color, String imagePath) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
