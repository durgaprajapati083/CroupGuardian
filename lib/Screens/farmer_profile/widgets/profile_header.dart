import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  User? userId = FirebaseAuth.instance.currentUser;
  String userName = "Loading...";
  @override
  void initState() {
    super.initState();
    fetchUserName();
  }
  void fetchUserName() async {
    var doc = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .get();
    if (doc.exists) {
      setState(() {
        userName = doc['userName'];
      });
    } else {
      setState(() {
        userName = "User Not Found";
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 30),
      color: const Color(0xFFE9FFF4),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.green,
            child: Text(
              userName[0].toUpperCase(),
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 12),
           Text(
            userName,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            FirebaseAuth.instance.currentUser!.email.toString(),
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
