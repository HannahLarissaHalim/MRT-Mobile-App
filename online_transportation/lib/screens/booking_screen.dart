import 'package:flutter/material.dart';
import '../services/booking_service.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {

  // contoh aja:
  final String asal = "Jakarta";
  final String tujuan = "Bandung";
  final String tanggal = "20 September 2025";
  final String jam = "08:00";

  int passengers = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pemesanan Tiket"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Detail Rute //
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Asal: $asal", style: const TextStyle(fontSize: 16)),
                    Text("Tujuan: $tujuan", style: const TextStyle(fontSize: 16)),
                    Text("Tanggal: $tanggal", style: const TextStyle(fontSize: 16)),
                    Text("Jam: $jam", style: const TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Pilih Jumlah Penumpang //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Jumlah Penumpang", style: TextStyle(fontSize: 16)),
                Row(
                  children: [
                    IconButton(
                      onPressed: passengers > 1
                          ? () {
                              setState(() {
                                passengers--;
                              });
                            }
                          : null,
                      icon: const Icon(Icons.remove),
                    ),
                    Text("$passengers", style: const TextStyle(fontSize: 16)),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          passengers++;
                        });
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
