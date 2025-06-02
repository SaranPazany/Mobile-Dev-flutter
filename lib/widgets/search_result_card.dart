import 'package:flutter/material.dart';
import '/models/course.dart';

class SearchResultCard extends StatelessWidget {
  final Course course;

  const SearchResultCard({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Course Image (Microsoft Word icon)
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Center(
              child: Image.asset(
                course.imageUrl,
                width: 50,
                height: 50,
              ),
            ),
          ),
          
          // Course Details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2D3748),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    course.description ?? '',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF6B7280),
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Ratings and participants
                      Row(
                        children: [
                          Icon(
                            Icons.star_border,
                            size: 12,
                            color: Color(0xFF9CA3AF),
                          ),
                          SizedBox(width: 2),
                          Text(
                            'កំណត់ត្រា',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF9CA3AF),
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.people_outline,
                            size: 12,
                            color: Color(0xFF9CA3AF),
                          ),
                          SizedBox(width: 2),
                          Text(
                            '99 នាក់បានចូលរួម',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF9CA3AF),
                            ),
                          ),
                        ],
                      ),
                      
                      // See more link
                      Text(
                        'See more...',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.orange,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}