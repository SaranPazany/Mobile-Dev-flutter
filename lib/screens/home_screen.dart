import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/hero_section.dart';
import '../widgets/action_buttons.dart';
import '../widgets/course_recommendations.dart';
import '../widgets/featured_courses.dart';
import '../widgets/teachers_section.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/footer_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 2; // Home tab is active

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            ActionButtons(),
            SizedBox(height: 20),
            CourseRecommendations(),
            SizedBox(height: 30),
            FeaturedCourses(),
            SizedBox(height: 30),
            TeachersSection(),
            SizedBox(height: 30),
            FooterSection(),
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
}