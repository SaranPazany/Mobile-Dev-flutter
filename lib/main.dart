import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home_screen.dart';
import 'screens/search_results_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const WorktencyApp());
}

class WorktencyApp extends StatelessWidget {
  const WorktencyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Worktency',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: Colors.orange,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.orange,
        primary: Colors.orange,
      ),
      fontFamily: 'Inter',
      scaffoldBackgroundColor: Colors.white,
    ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/search': (context) => const SearchResultsScreen(),
      },
    );
  }
}