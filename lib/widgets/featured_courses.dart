import 'package:flutter/material.dart';

class FeaturedCourses extends StatefulWidget {
  const FeaturedCourses({super.key});

  @override
  State<FeaturedCourses> createState() => _FeaturedCoursesState();
}

class _FeaturedCoursesState extends State<FeaturedCourses> {
  int selectedCategoryIndex = 0;
  final List<String> categories = [
    'Artificial Intelligence',
    'Machine Learning',
    'Self Development'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Featured Course',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3748),
            ),
          ),
        ),
        const SizedBox(height: 20),
        // Category Tabs
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final isSelected = index == selectedCategoryIndex;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategoryIndex = index;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 12),
                  child: Column(
                    children: [
                      Text(
                        categories[index],
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: isSelected
                              ? const Color(0xFF2D3748)
                              : const Color(0xFF9CA3AF),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 3,
                        width: categories[index].length * 4.0,
                        decoration: BoxDecoration(
                          color:
                              isSelected ? Colors.orange : Colors.transparent,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        // Course Grid
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 3,
              mainAxisSpacing: 12,
              childAspectRatio: 0.85,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return _buildCourseCard();
            },
          ),
        ),
        const SizedBox(height: 20),
        // Pagination Dots
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == 0 ? Colors.orange : const Color(0xFFE5E7EB),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget _buildCourseCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Microsoft Word Icon
            Center(
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/word.png',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Course Title
            const Text(
              'Microsoft word',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2D3748),
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            // Rating and Reviews
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star_border,
                      size: 10,
                      color: Color(0xFF9CA3AF),
                    ),
                    const SizedBox(width: 2),
                    const Expanded(
                      child: Text(
                        'កំណត់ត្រា',
                        style: TextStyle(
                          fontSize: 8,
                          color: Color(0xFF9CA3AF),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    const Icon(
                      Icons.people_outline,
                      size: 10,
                      color: Color(0xFF9CA3AF),
                    ),
                    const SizedBox(width: 2),
                    const Expanded(
                      child: Text(
                        '99 នាក់បានចូលរួម',
                        style: TextStyle(
                          fontSize: 8,
                          color: Color(0xFF9CA3AF),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 6),
            // Instructor Info
            Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/prof.png',
                      width: 16,
                      height: 16,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mr. Bunthorn Liv',
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2D3748),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Professor @ITC',
                        style: TextStyle(
                          fontSize: 7,
                          color: Color(0xFF9CA3AF),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            // Price and Start Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '\$39.99',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D3748),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Row(
                    children: [
                      Text(
                        'Start',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF4A90E2),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 2),
                      Icon(
                        Icons.arrow_forward,
                        size: 10,
                        color: Color(0xFF4A90E2),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
