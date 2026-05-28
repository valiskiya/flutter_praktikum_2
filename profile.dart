import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background semi circle atas
          Positioned(
            top: -200,
            left: -100,
            right: -100,
            child: Container(
              height: 380,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(190),
              ),
            ),
          ),
          // Background semi circle bawah
          Positioned(
            bottom: -200,
            left: -100,
            right: -100,
            child: Container(
              height: 380,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(190),
              ),
            ),
          ),
          // Konten profil
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 20),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person_outline,
                    size: 50,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: const [
                      ProfileItem(icon: Icons.person_outline, text: 'PAB 2025'),
                      ProfileItem(icon: Icons.phone, text: '146210012345'),
                      ProfileItem(icon: Icons.email, text: 'pab2023@gmail.com'),
                      ProfileItem(icon: Icons.location_on, text: 'Surabaya'),
                      ProfileItem(
                        icon: Icons.camera_alt_outlined,
                        text: 'pab2023',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const ProfileItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.blue),
            const SizedBox(width: 12),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ],
        ),
        const Divider(height: 20, thickness: 1),
      ],
    );
  }
}
