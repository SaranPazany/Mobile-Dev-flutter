import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () async {
              final Uri url = Uri.parse('https://github.com/SaranPazany');
              if (!await launchUrl(url)) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Could not launch')),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 135, 0, 202),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: const Text(
              'Hire Me!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: () async {
              final Uri url = Uri.parse('https://www.linkedin.com/in/pazany-saran-75611123a//');
              if (!await launchUrl(url)) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Could not launch LinkedIn')),
                );
              }
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color.fromARGB(178, 92, 0, 197)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Download CV',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 135, 0, 202),
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.download,
                  color: const Color.fromARGB(255, 135, 0, 202),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

