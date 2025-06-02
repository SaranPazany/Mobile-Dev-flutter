import 'package:flutter/material.dart';

class TeachersSection extends StatelessWidget {
  const TeachersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Meet Our Teachers',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 26),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: _buildTeacherCard('assets/images/Teacher1.png'),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: _buildTeacherCard('assets/images/Teacher2.png'),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: _buildTeacherCard('assets/images/Teacher3.png'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        // New section matching the UI image
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // Header with arrow and text
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/arrow.png',
                    width: 40,
                    height: 30,
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      'To reach our only One goal,\nwhat we can share with you today',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2D3748),
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // Workshop cards
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return _buildWorkshopCard();
                },
              ),
              const SizedBox(height: 16),
              // See more link
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'See more',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF4A90E2),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTeacherCard(String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: AspectRatio(
          aspectRatio: 0.75,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildWorkshopCard() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Workshop image
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/workshop.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '"Machine learning and AI are the engines driving the technological revolution of our time, transforming the way we work, live, and innovate"',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF2D3748),
                    height: 1.4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Dr. Valy Dana',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2D3748),
                  ),
                ),
                const Text(
                  'Professor @ITC, Cofounder @ Worktency',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF9CA3AF),
                  ),
                ),
                const SizedBox(height: 12),
                // Tags
                Row(
                  children: [
                    _buildTag('🤖 Machine learning'),
                    const SizedBox(width: 8),
                    _buildTag('🧠 Artificial intelligent'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFEBF4FF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFF4A90E2).withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 11,
          color: Color(0xFF4A90E2),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}