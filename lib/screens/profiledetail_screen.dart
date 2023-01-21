import 'package:flutter/material.dart';

class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prodile Detail'),
      ),
      body: const Center(
        child: Text(
          'Profile Detail Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}