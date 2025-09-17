import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MRT App"),
        backgroundColor: Colors.green[700],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildMenuCard(
              icon: Icons.search,
              title: "Cari Rute MRT",
              onTap: () {
                Navigator.pushNamed(context, '/searchRoute');
              },
            ),
            _buildMenuCard(
              icon: Icons.schedule,
              title: "Jadwal & Info Stasiun",
              onTap: () {
                Navigator.pushNamed(context, '/stationInfo');
              },
            ),
            _buildMenuCard(
              icon: Icons.confirmation_num,
              title: "Booking Tiket",
              onTap: () {
                Navigator.pushNamed(context, '/booking');
              },
            ),
            _buildMenuCard(
              icon: Icons.history,
              title: "Riwayat Perjalanan",
              onTap: () {
                Navigator.pushNamed(context, '/history');
              },
            ),
            _buildMenuCard(
              icon: Icons.map,
              title: "Peta Rute MRT",
              onTap: () {
                Navigator.pushNamed(context, '/map');
              },
            ),
            _buildMenuCard(
              icon: Icons.notifications,
              title: "Notifikasi / Promo",
              onTap: () {
                Navigator.pushNamed(context, '/promo');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 50, color: Colors.green[700]),
              const SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
