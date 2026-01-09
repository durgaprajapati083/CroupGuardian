import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../widgets/stat_card.dart';
import '../../widgets/create_post_card.dart';
import '../../widgets/post_card.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreen,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text("CropGuardian"),
        // actions: const [
        //   Icon(Icons.menu),
        //   SizedBox(width: 12)
        // ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _header(),
            const SizedBox(height: 20),
            _statsRow(),
            const SizedBox(height: 20),
            const CreatePostCard(),
            const SizedBox(height: 20),
            _filterButtons(),
            const SizedBox(height: 10),
            const PostCard(
              message: "great",
              time: "25/12/2025, 12:10:56",
            ),
            const PostCard(
              message: "its was very useful",
              time: "24/12/2025, 14:55:56",
            ),
            const PostCard(
              message: "It was very helpful",
              time: "24/12/2025, 14:28:14",
            ),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Farmer Community",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 6),
        Text(
          "Share experiences, ask questions, and learn together",
          style: TextStyle(color: AppColors.greyText),
        ),
      ],
    );
  }

  Widget _statsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        StatCard(icon: Icons.people, label: "Posts", value: "3"),
        StatCard(icon: Icons.thumb_up, label: "Likes", value: "0"),
        StatCard(icon: Icons.trending_up, label: "Community", value: "Active"),
      ],
    );
  }

  Widget _filterButtons() {
    return Row(
      children: [
        _filterChip("All Posts", true),
        _filterChip("With Images", false),
        _filterChip("Text Only", false),
      ],
    );
  }

  Widget _filterChip(String text, bool active) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Chip(
        backgroundColor:
        active ? AppColors.cardGreen : Colors.white,
        label: Text(
          text,
          style: TextStyle(
            color: active ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
