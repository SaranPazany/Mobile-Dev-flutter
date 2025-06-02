import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.grey[50],
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/logo.jpg',
                height: 24,
                fit: BoxFit.contain,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About Us',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  SizedBox(height: 8),
                  Text('Contact Us'),
                  Text('FAQ'),
                  Text('Community Forum'),
                  Text('Term of Service'),
                  Text('Careers'),
                  Text('Blog'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Social Impact',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  SizedBox(height: 8),
                  Text('Cookies Setting'),
                  Text('Privacy'),
                  Text('Accessibility Statement'),
                  Text('Investors'),
                  Text('Go Pro Course'),
                  Text('Affiliate'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Image.asset(
            'assets/images/ITC.png',
            height: 100,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 20),
          Image.asset(
            'assets/images/social.png',
            height: 30,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 16),
          const Text(
            '2023 © Worktency, Inc. All rights reserved.',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
