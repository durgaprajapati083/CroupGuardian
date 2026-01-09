import 'package:flutter/material.dart';
import 'widgets/profile_header.dart';
import 'widgets/status_card.dart';
import 'widgets/profile_form.dart';
import 'widgets/footer_section.dart';

class FarmerProfileScreen extends StatelessWidget {
  const FarmerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4FFF8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "CropGuardian",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.menu, color: Colors.black),
        //     onPressed: () {},
        //   )
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ProfileHeader(),
            SizedBox(height: 20),
            StatusRow(),
            SizedBox(height: 30),
            ProfileForm(),
            SizedBox(height: 40),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
