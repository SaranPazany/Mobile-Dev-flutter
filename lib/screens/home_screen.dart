import 'package:flutter/material.dart';
import '/widgets/bottom_navigation.dart';
import '/widgets/course_card.dart';
import '/widgets/footer_section.dart';
import '/widgets/recommendation_card.dart';
import '/widgets/search_bar.dart';
import '/models/course.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 2; // Online course tab is active
  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, dynamic>> _recommendations = [
    {
      'title': 'Explore your favorite subjects!',
      'subtitle': 'Introduction to Machine Learning',
      'description':
          '"Machine learning and AI are the engines driving the technological revolution of our time, transforming the way we work, live, and innovate"',
      'image': 'assets/images/workshop.png',
    },
    {
      'title': 'Build your competency with us!',
      'subtitle': 'Introduction to Machine Learning',
      'description':
          '"Machine learning and AI are the engines driving the technological revolution of our time, transforming the way we work, live, and innovate"',
      'image': 'assets/images/workshop.png',
    },
    {
      'title': 'Best recommended for you!',
      'subtitle': 'Introduction to Machine Learning',
      'description':
          '"Machine learning and AI are the engines driving the technological revolution of our time, transforming the way we work, live, and innovate"',
      'image': 'assets/images/workshop.png',
    },
  ];

  final List<String> _categories = [
    'Cyber Security',
    'Network Administrator',
    'Cryptography',
  ];

  void _handleSearch(String query) {
    if (query.isNotEmpty) {
      Navigator.pushNamed(
        context,
        '/search',
        arguments: query,
      );
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // App Bar with Logo and Search
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  // Logo
                  Container(
                    height: 30,
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/images/logo.jpg',
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            // Main Content
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Search Bar
                    CustomSearchBar(
                      controller: _searchController,
                      onSearch: _handleSearch,
                      hintText: 'Find your course/topic...',
                    ),

                    // Recommendations
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _recommendations.length,
                      itemBuilder: (context, index) {
                        return RecommendationCard(
                          title: _recommendations[index]['title'],
                          subtitle: _recommendations[index]['subtitle'],
                          description: _recommendations[index]['description'],
                          imagePath: _recommendations[index]['image'],
                        );
                      },
                    ),

                    // Course Categories
                    ..._categories
                        .map((category) => _buildCategorySection(category))
                        .toList(),

                    // Footer
                    const FooterSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildCategorySection(String category) {
    // Generate sample courses for each category
    final courses = List.generate(
      3,
      (index) => Course(
        id: 'course-$category-$index',
        title: 'Microsoft word',
        instructor: 'Dr. Bunthorn Liv',
        instructorTitle: 'Professor @ITC',
        price: 39.99,
        rating: 4.5,
        participants: 99,
        imageUrl: 'assets/images/word.png',
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
          child: Text(
            category,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3748),
            ),
          ),
        ),
        SizedBox(
          height:
              320, 
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: courses.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                    right: 20), // Increased spacing between cards
                child: CourseCard(course: courses[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
