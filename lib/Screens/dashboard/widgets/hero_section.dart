import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../community_screen/community_screen.dart';
import '../../diagnosis_screen/diagnosis_screen.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      color: const Color(0xFFE9FFF4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _badge(),
          const SizedBox(height: 16),
          const Text(
            "AI-Powered Farming\nFor Every Farmer",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "हर किसान के लिए एआई-संचालित खेती",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Intelligent crop disease diagnosis, fertilizer planning, and expert guidance in your language.",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 20),
          _primaryButton(),
          const SizedBox(height: 10),
          _secondaryButton(),
        ],
      ),
    );
  }

  Widget _badge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        "Trusted by 4000+ Farmers",
        style: TextStyle(color: Colors.green),
      ),
    );
  }

  Widget _primaryButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Get.to(DiagnosisScreen());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text("▣ Start Diagnosis"),
      ),
    );
  }

  Widget _secondaryButton() {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: (){
          Get.to(CommunityScreen());
        },
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.green,
          side: const BorderSide(color: Colors.green),
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: (Text("Join Community / समुदाय में शामिल हों")),
      ),
    );
  }
}
