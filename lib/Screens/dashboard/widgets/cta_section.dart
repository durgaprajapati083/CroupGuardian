import 'package:flutter/material.dart';

class CTASection extends StatelessWidget {
  const CTASection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      color: const Color(0xFFE9FFF4),
      child: Column(
        children: [
          const Text(
            "Ready to Protect Your Crops?",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "अपनी फसलों की रक्षा के लिए तैयार हैं?",
            style: TextStyle(
              fontSize:  14,

            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Join thousands of farmers using AI to increase yields.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text("Get Started – It’s Free"),
            ),
          ),
        ],
      ),
    );
  }
}
