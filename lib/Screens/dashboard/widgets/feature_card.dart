import 'package:flutter/material.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Powerful Features for Farmers",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "किसानों के लिए शक्तिशाली सुविधाएं",
            style: TextStyle(fontSize: 14, ),
          ),
          SizedBox(height: 16),
          FeatureCard(
            title: "AI Crop Diagnosis",
            description:
            "Upload crop photos for instant disease and pest identification with 85% accuracy \n85% सटीकता के साथ तुरंत बीमारी और कीट पहचान के लिए फसल की तस्वीरें अपलोड करें",
          ),
          FeatureCard(
            title: "Community Support",
            description:
            "Connect with fellow farmers, share experiences, and learn from others\nसाथी किसानों से जुड़ें, अनुभव साझा करें और एक-दूसरे से सीखें",
          ),
          FeatureCard(
            title: "Resource Library",
            description:
            "Access government schemes, market prices, and educational content in your language\nअपनी भाषा में सरकारी योजनाएं, बाजार मूल्य और शैक्षिक सामग्री प्राप्त करें",
          ),
          FeatureCard(
            title: "Organic Solutions",
            description:
            "Get personalized organic treatment plans and sustainable farming practices\nव्यक्तिगत जैविक उपचार योजनाएं और टिकाऊ खेती प्रथाएं प्राप्त करें",
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final String description;

  const FeatureCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 6),
          Text(description, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
