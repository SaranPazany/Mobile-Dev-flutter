import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const WorktencyApp());
}

class WorktencyApp extends StatelessWidget {
  const WorktencyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Worktency',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Inter',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}