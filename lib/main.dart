import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tugas1',
      home: const ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900], // Biru tua
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),

                // Profile Image
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/windah1.jpg'),
                  backgroundColor: Colors.white,
                  // Uncomment jika tidak ada gambar:
                  // child: Icon(Icons.person, size: 60, color: Colors.blue[900]),
                ),

                const SizedBox(height: 20),

                // Name
                const Text(
                  'Windah Basudara',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 8),

                // Job Title
                const Text(
                  'Content Creator',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 30),

                // Divider
                Container(
                  width: 100,
                  height: 2,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),

                const SizedBox(height: 30),

                // Contact Information Cards
                _buildContactCard(icon: Icons.phone, text: '+62 812-3456-7890'),

                const SizedBox(height: 15),

                _buildContactCard(
                  icon: Icons.email,
                  text: 'windah@example.com',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContactCard({required IconData icon, required String text}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
          child: Row(
            children: [
              Icon(icon, color: Colors.blue[700], size: 24),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
