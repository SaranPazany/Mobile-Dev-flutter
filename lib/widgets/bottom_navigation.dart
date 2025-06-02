import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: onTap,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor:
              const Color(0xFF2D3748),
          unselectedItemColor: const Color(0xFF6B7280),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
              icon: _buildNavIcon(
                icon: Icons.search,
                isSelected: currentIndex == 0,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: _buildNavIcon(
                icon: Icons.assignment_outlined,
                isSelected: currentIndex == 1,
              ),
              label: 'My courses',
            ),
            BottomNavigationBarItem(
              icon: _buildNavIcon(
                icon: Icons.play_arrow,
                isSelected: currentIndex == 2,
              ),
              label: 'Online course',
            ),
            BottomNavigationBarItem(
              icon: _buildNavIcon(
                icon: Icons.layers_outlined,
                isSelected: currentIndex == 3,
              ),
              label: 'Category',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavIcon({
    required IconData icon,
    required bool isSelected,
  }) {
    if (isSelected) {
      return Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          color: Colors.orange,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
      );
    } else {
      return Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: const Color(0xFF6B7280),
          size: 20,
        ),
      );
    }
  }
}
