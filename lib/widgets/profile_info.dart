import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.2,
            ),
            children: [
              TextSpan(text: 'Hi I\'m\n'),
              TextSpan(
                text: 'Saran Pazany\n',
                style: TextStyle(color: Color.fromARGB(255, 81, 1, 202)),
              ),
              
              TextSpan(
                text: 'Frontend Developer'
                ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Collaborative and highly skilled UX/UI and Frontend Developer with experience in designing intuitive user interfaces and developing responsive web applications.', 
          style: TextStyle(
            fontSize: 16,
            color: Colors.black54,
            height: 1.5,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

