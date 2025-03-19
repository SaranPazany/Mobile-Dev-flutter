import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/portfolio_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed( 
          seedColor: const Color.fromARGB(255, 135, 0, 202),
          primary: const Color.fromARGB(255, 135, 0, 202),
        ),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const PortfolioScreen(),
    );
  }
}

