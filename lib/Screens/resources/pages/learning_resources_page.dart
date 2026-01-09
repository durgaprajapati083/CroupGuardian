
import 'package:flutter/material.dart';

import '../widgets/app_footer.dart';
import '../widgets/learning_card.dart';

class LearningResourcesPage extends StatelessWidget {
  const LearningResourcesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        LearningCard(
          title: "Organic Farming Basics",
          hindi: "जैविक खेती",
        ),
        LearningCard(
          title: "Water Conservation",
          hindi: "जल संरक्षण",
        ),
        LearningCard(
          title: "Pest Management",
          hindi: "कीट प्रबंधन",
        ),
        AppFooter()
      ],
    );
  }
}
