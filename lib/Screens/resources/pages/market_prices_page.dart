
import 'package:flutter/material.dart';

import '../widgets/app_footer.dart';
import '../widgets/market_price_card.dart';


class MarketPricesPage extends StatelessWidget {
  const MarketPricesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        MarketPriceCard(crop: "Wheat / गेहूं", price: "₹2,125 / क्विंटल"),
        MarketPriceCard(crop: "Rice / चावल", price: "₹2,040 / क्विंटल"),
        MarketPriceCard(crop: "Cotton / कपास", price: "₹6,620 / क्विंटल"),
        MarketPriceCard(crop: "Soybean / सोयाबीन", price: "₹4,600 / क्विंटल"),
        AppFooter()
      ],
    );
  }
}
