import 'package:flutter/material.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF0B6E4F), // Dark green
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logo + App name
          Row(
            children: const [
              Icon(Icons.eco, color: Colors.lightGreenAccent, size: 28),
              SizedBox(width: 8),
              Text(
                "CropGuardian",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          const Text(
            "कृषि रक्षक",
            style: TextStyle(color: Colors.white70),
          ),

          const SizedBox(height: 14),
          const Text(
            "Empowering small-scale farmers with AI-powered crop protection and sustainable farming solutions.",
            style: TextStyle(color: Colors.white70, fontSize: 13),
          ),

          const SizedBox(height: 8),
          const Text(
            "छोटे किसानों को AI-संचालित फसल सुरक्षा के साथ सशक्त बनाना।",
            style: TextStyle(color: Colors.white54, fontSize: 12),
          ),

          const SizedBox(height: 20),

          // Quick Links
          _sectionTitle("Quick Links"),
          _footerLink("Home / होम"),
          _footerLink("Diagnose / निदान"),
          _footerLink("Community / समुदाय"),
          _footerLink("Resources / संसाधन"),

          const SizedBox(height: 16),

          // Support
          _sectionTitle("Support"),
          _footerLink("Help Center / सहायता केंद्र"),
          _footerLink("FAQs / सामान्य प्रश्न"),
          _footerLink("Tutorial Videos / ट्यूटोरियल वीडियो"),
          _footerLink("Contact Support / सहायता संपर्क"),

          const SizedBox(height: 16),

          // Contact
          _sectionTitle("Contact Us"),
          _footerRow(Icons.phone, "+91 9513065382"),
          _footerRow(Icons.email, "support@cropguardian.com"),
          _footerRow(Icons.location_on, "India"),

          const SizedBox(height: 18),
          const Divider(color: Colors.white24),

          const SizedBox(height: 8),
          const Center(
            child: Text(
              "© 2026 CropGuardian. Built with care for farmers.",
              style: TextStyle(color: Colors.white54, fontSize: 11),
            ),
          ),

          const SizedBox(height: 6),
          const Center(
            child: Text(
              "Privacy Policy   |   Terms of Service",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 11,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ---------- Helpers ----------

  static Widget _sectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static Widget _footerLink(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white70, fontSize: 13),
      ),
    );
  }

  static Widget _footerRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          Icon(icon, color: Colors.white70, size: 16),
          const SizedBox(width: 6),
          Text(
            text,
            style: const TextStyle(color: Colors.white70, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
