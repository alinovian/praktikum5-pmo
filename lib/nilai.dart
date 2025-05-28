import 'package:flutter/material.dart';

class Nilai extends StatefulWidget {
  const Nilai({super.key});

  @override
  State<Nilai> createState() => _NilaiState();
}

class _NilaiState extends State<Nilai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nilai")),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8.0), // Jarak antar item
            padding: const EdgeInsets.all(16.0), // Jarak dalam container
            decoration: BoxDecoration(
              color: Colors.red[100], // Warna latar belakang
              borderRadius: BorderRadius.circular(8.0), // Sudut melengkung
            ),
            child: Row(
              children: [
                const Icon(Icons.score, color: Colors.red), // Ikon mata kuliah
                const SizedBox(width: 16.0), // Jarak antara ikon dan teks
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pemrograman Mobile",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("UTS: 95 | UAS: 95 | Tugas: 95"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.deepOrange[100],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                const Icon(Icons.score, color: Colors.deepOrange),
                const SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pemrograman Web",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("UTS: 95 | UAS: 95 | Tugas: 95"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                const Icon(Icons.score, color: Colors.blue),
                const SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pembelajaran Mesin",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("UTS: 95 | UAS: 95 | Tugas: 95"),
                  ],
                ),
              ],
            ),
          ),

          // Tombol Keluar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman sebelumnya
              },
              icon: const Icon(Icons.exit_to_app, size: 50),
            ),
          ),
        ],
      ),
    );
  }
}
