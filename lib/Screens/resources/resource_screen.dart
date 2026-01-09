
import 'package:flutter/material.dart';
import 'pages/government_schemes_page.dart';
import 'pages/learning_resources_page.dart';
import 'pages/market_prices_page.dart';
import 'widgets/resource_tab_button.dart';


class ResourcesScreen extends StatefulWidget {
  const ResourcesScreen({super.key});

  @override
  State<ResourcesScreen> createState() => _ResourcesScreenState();
}

class _ResourcesScreenState extends State<ResourcesScreen> {
  final PageController _pageController = PageController();
  int selectedIndex = 0;

  void _onTabTap(int index) {
    setState(() => selectedIndex = index);
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2FFF6),
      body: SafeArea(
        child: Column(
          children: [
            _header(),
            _searchBar(),
            _tabs(),
            const SizedBox(height: 12),

            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() => selectedIndex = index);
                },
                children: const [
                  GovernmentSchemesPage(),
                  MarketPricesPage(),
                  LearningResourcesPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 14),
      child: Column(
        children: [
          Text(
            "Farmer Resources",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            "किसान संसाधन",
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }

  Widget _searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search resources... / संसाधन खोजें...",
          prefixIcon: const Icon(Icons.search),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _tabs() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: ResourceTabButton(
              title: "Government Schemes",
              subtitle: "सरकारी योजनाएं",
              icon: Icons.article,
              isSelected: selectedIndex == 0,
              onTap: () => _onTabTap(0),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ResourceTabButton(
              title: "Market Prices",
              subtitle: "बाजार मूल्य",
              icon: Icons.currency_rupee,
              isSelected: selectedIndex == 1,
              onTap: () => _onTabTap(1),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ResourceTabButton(
              title: "Learning",
              subtitle: "शिक्षण संसाधन",
              icon: Icons.menu_book,
              isSelected: selectedIndex == 2,
              onTap: () => _onTabTap(2),
            ),
          ),
        ],
      ),
    );
  }
}
