import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/action_buttons.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 135, 0, 202),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.web,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              'Webber Co.',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              ProfileHeader(),
              SizedBox(height: 20),
              ProfileInfo(),
              SizedBox(height: 40),
              ActionButtons(),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

