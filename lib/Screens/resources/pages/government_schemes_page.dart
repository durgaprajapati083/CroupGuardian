import 'package:flutter/material.dart';
import '../widgets/app_footer.dart';
import '../widgets/scheme_card.dart';

class GovernmentSchemesPage extends StatelessWidget {
  const GovernmentSchemesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 10),

          const SchemeCard(
            title: "PM-KISAN Scheme",
            hindi: "पीएम किसान योजना",
            tag: "Financial Support",
            description:
            "Direct income support of ₹6000 per year to all farmer families.",
          ),

          const SchemeCard(
            title: "Pradhan Mantri Fasal Bima Yojana",
            hindi: "प्रधानमंत्री फसल बीमा योजना",
            tag: "Insurance",
            description:
            "Crop insurance scheme to protect farmers against crop loss.",
          ),

          const SchemeCard(
            title: "Soil Health Card Scheme",
            hindi: "मृदा स्वास्थ्य कार्ड योजना",
            tag: "Agricultural Support",
            description:
            "Provides soil health cards with crop-wise recommendations.",
          ),

          const SizedBox(height: 30),

          // ✅ FOOTER GOES HERE
          const AppFooter(),
        ],
      ),
    );
  }
}
