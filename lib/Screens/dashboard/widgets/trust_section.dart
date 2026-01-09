import 'package:flutter/material.dart';

class TrustSection extends StatelessWidget {
  const TrustSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Why Farmers Trust CropGuardian",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 14),
          _TrustItem("95% Diagnosis Accuracy"),
          _TrustItem("Multilingual Support (Hindi & More)"),
          _TrustItem("Expert Guidance"),
          _TrustItem("Community-Driven"),
        ],
      ),
    );
  }
}

class _TrustItem extends StatelessWidget {
  final String text;

  const _TrustItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          const Icon(Icons.check_circle, color: Colors.green),
          const SizedBox(width: 10),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
