import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Konfirmasi Pesanan")),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.grey[300],
              child: const Center(child: Text("Area Peta Rute Perjalanan")),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Pilih Kendaraan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _vehicleOption(Icons.motorcycle, "Motor", "Rp 15.000"),
                      _vehicleOption(Icons.directions_car, "Mobil", "Rp 30.000"),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () => _confirmBooking(context),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text("Pesan Sekarang"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _vehicleOption(IconData icon, String name, String price) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.blue),
        Text(name),
        Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}