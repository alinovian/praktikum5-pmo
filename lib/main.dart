import 'package:flutter/material.dart';
import 'dosen.dart';
import 'mahasiswa.dart';
import 'matakuliah.dart';
import 'nilai.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> pages = const [
    HomePage(),
    Dosen(),
    Mahasiswa(),
    Matakuliah(),
    Nilai(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pages[_currentIndex]),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          height: 80, // Ini tinggi AppBar bawah
          color: const Color.fromARGB(255, 88, 113, 255),
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            currentIndex: _currentIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            backgroundColor: Colors.transparent, // biar gak dobel
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: const IconThemeData(size: 30),
            unselectedIconTheme: const IconThemeData(size: 24),
            selectedLabelStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: const TextStyle(fontSize: 12),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Asisten",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: "Mahasiswa",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.subject),
                label: "Mata Kuliah",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.score), label: "Nilai"),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi 2M", style: TextStyle(fontSize: 18)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Oleh : al.dev"),
            SizedBox(
              height: 250,
              width: 250,
              child: Image.asset("assets/gambar/Logo Amikom.png"),
            ),
          ],
        ),
      ),
    );
  }
}