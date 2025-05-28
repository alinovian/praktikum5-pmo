import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mahasiswa extends StatefulWidget {
  const Mahasiswa({super.key});

  @override
  State<Mahasiswa> createState() => _MahasiswaState();
}

class _MahasiswaState extends State<Mahasiswa> {
  String _selectedPosition = 'Semua';
  // List data mahasiswa lengkap
  final List<Map<String, String>> students = [
    {
      "id": "22SA11A109",
      "name": "Fatih Syamsudin",
      "address": "Jl. Merdeka No.1, Jakarta",
      "email": "fatih@amikompurwokerto.ac.id",
      "phone": "08123456789",
      "image": "assets/gambar/ketua.webp",
      "position": "Informatika",
      "quotes": "Asal ikhtiar dikencengin mah semua hal pasti bisa",
    },
    {
      "id": "22SA11A002",
      "name": "Dandi Ramadhan",
      "address": "Jl. Imam Bonjol No.5, Bandung",
      "email": "dandi@amikompurwokerto.ac.id",
      "phone": "08123456765",
      "image": "assets/gambar/wakilketua.webp",
      "position": "Informatika",
      "quotes": "Hakuna matata",
    },
    {
      "id": "22SA11A003",
      "name": "Evril Fadrekha Cahyani",
      "address": "Jl. Gatot Subroto No.12, Surabaya",
      "email": "evril@amikompurwokerto.ac.id",
      "phone": "08345678901",
      "image": "assets/gambar/sekre.webp",
      "position": "Sistem Informasi",
      "quotes": "gmau",
    },
    {
      "id": "22SA11A004",
      "name": "Epri Anggriani",
      "address": "Kembaran, Banyumas",
      "email": "anggi@amikompurwokerto.ac.id",
      "phone": "08456789012",
      "image": "assets/gambar/bendahara1.webp",
      "position": "Informatika",
      "quotes": "Jangan dulu lelah, yakin semua indah",
    },
    {
      "id": "22SA11A005",
      "name": "Mohamad Ridho Mubarok",
      "address": "Jl. Hayam Wuruk No.3, Semarang",
      "email": "ridho@amikompurwokerto.ac.id",
      "phone": "08567890123",
      "image": "assets/gambar/jardas.webp",
      "position": "Informatika",
      "quotes": "Kesempatan bakal datang 2x kalo diusahain",
    },
    {
      "id": "22SA11A006",
      "name": "Mohamad Aqil Bafaqih",
      "address": "Jl. Kebon Sirih No.7, Medan",
      "email": "faqih@amikompurwokerto.ac.id",
      "phone": "08678901234",
      "image": "assets/gambar/bendahara2.webp",
      "position": "Sistem Informasi",
      "quotes": "Sebaik baiknya gelar adalah gelar sajadah",
    },
    {
      "id": "22SA11A007",
      "name": "Alfina Nur Aeni",
      "address": "Jl. Juanda No.9, Bali",
      "email": "alfina@amikompurwokerto.ac.id",
      "phone": "08789012345",
      "image": "assets/gambar/sdm1.webp",
      "position": "Sistem Informasi",
      "quotes": "ytta",
    },
    {
      "id": "22SA11A008",
      "name": "Tresnanda Agsifa Cakra Buana",
      "address": "Jl. Diponegoro No.11, Makassar",
      "email": "tresnanda@amikompurwokerto.ac.id",
      "phone": "08890123456",
      "image": "assets/gambar/prgmr.webp",
      "position": "Informatika",
      "quotes":
          "Dingin di luar, tapi kode-kode yang kau buat bikin hatiku tetap terhangat. Siapa sangka di balik tampilan UI-mu, ada algoritma cinta yang siap meluluhkan hatiku 💻❤️✨",
    },
    {
      "id": "22SA11A009",
      "name": "Salma Ngarifatul Khofiyah",
      "address": "Jl. Pahlawan No.5, Palembang",
      "email": "salma@amikompurwokerto.ac.id",
      "phone": "08901234567",
      "image": "assets/gambar/sdm2.webp",
      "position": "Informatika",
      "quotes":
          "Jangan tunggu waktu yang tepat, buatlah waktu itu menjadi tepat",
    },
    {
      "id": "22SA11A010",
      "name": "Nurul Khotimah Ansyari",
      "address": "Jl. Asia Afrika No.2, Bogor",
      "email": "nurul@amikompurwokerto.ac.id",
      "phone": "08012345678",
      "image": "assets/gambar/mm1.webp",
      "position": "Informatika",
      "quotes": "Jangan lupa makan tahu, bakso, dan sambel",
    },
    {
      "id": "22SA11A011",
      "name": "Muhammad Faiz Alfi Rahman",
      "address": "Jl. Surya Sumantri No.6, Depok",
      "email": "faiz@amikompurwokerto.ac.id",
      "phone": "08111223344",
      "image": "assets/gambar/mm2.webp",
      "position": "Sistem Informasi",
      "quotes": "Al Baqarah 286",
    },
    {
      "id": "22SA11A012",
      "name": "Niken Justisia",
      "address": "Jl. Pasir Kaliki No.10, Cirebon",
      "email": "niken@amikompurwokerto.ac.id",
      "phone": "08222334455",
      "image": "assets/gambar/cc.webp",
      "position": "Bisnis Digital",
      "quotes": "At least you gave it a shot",
    },
    {
      "id": "21SA11A001",
      "name": "Muhammad Thoriq Jamil",
      "address": "-",
      "email": "jamil@amikompurwokerto.ac.id",
      "phone": "081315009695",
      "image": "assets/gambar/ketua23.webp",
      "position": "Informatika",
      "quotes":
          "Untuk mencapai angka 10 tidak harus 5+5, tetapi bisa 8+2, 7+3, 5*2, 100/10, bisa jadi langsung 10, begitu pula dengan kesuksesan tidak hanya dengan satu cara. Jadilah 10 dengan versi terbaikmu",
    },
    {
      "id": "21SA11A002",
      "name": "Naufal Yogi Aptana",
      "address": "-",
      "email": "nopal@amikompurwokerto.ac.id",
      "phone": "081315009695",
      "image": "assets/gambar/wakilketua23.webp",
      "position": "Informatika",
      "quotes": "Hold the vision, trust the process",
    },
    {
      "id": "21SA11A003",
      "name": "Syifalita Hidawani",
      "address": "-",
      "email": "syifa@amikompurwokerto.ac.id",
      "phone": "081315009695",
      "image": "assets/gambar/sekre23.webp",
      "position": "Informatika",
      "quotes": "Cara terbaik memprediksi masa depan adalah menciptakannya",
    },
    {
      "id": "21SA11A004",
      "name": "Nova Azzahra",
      "address": "-",
      "email": "nova@amikompurwokerto.ac.id",
      "phone": "081315009695",
      "image": "assets/gambar/bendahara1 23.webp",
      "position": "Informatika",
      "quotes":
          "Tidak ada istilah gagal dalam hidup, yang ada hanya sukses dan belum berhasil. Tetap semangat!",
    },
    {
      "id": "21SA11A005",
      "name": "Dwi Angga Ferdianto",
      "address": "-",
      "email": "angga@amikompurwokerto.ac.id",
      "phone": "081315009695",
      "image": "assets/gambar/jardas23.webp",
      "position": "Informatika",
      "quotes":
          "It's not that I'm so smart, it's just that I stay with problems longer.",
    },
    {
      "id": "23SA11A006",
      "name": "Aldona Septiana",
      "address": "-",
      "email": "aldona@amikompurwokerto.ac.id",
      "phone": "081315009695",
      "image": "assets/gambar/bendahara2 23.webp",
      "position": "Informatika",
      "quotes": "Segalanya menjadi mudah, dengan mudah mudahan",
    },
    {
      "id": "21SA11A007",
      "name": "Velizha Sandy Kusuma",
      "address": "Padamara, Purbalingga",
      "email": "sasa@amikompurwokerto.ac.id",
      "phone": "081315009695",
      "image": "assets/gambar/sdm1 23.webp",
      "position": "Informatika",
      "quotes":
          "Sebagus apapun kata motivasi tidak akan merubah diri jika berdiam diri tanpa aksi",
    },
    {
      "id": "21SA11A008",
      "name": "Aden Hidayatulloh",
      "address": "Ajibarang, Banyumas",
      "email": "aden@amikompurwokerto.ac.id",
      "phone": "081315009695",
      "image": "assets/gambar/prgmr 23.webp",
      "position": "Informatika",
      "quotes": "Everybody needs some time on their own",
    },
    {
      "id": "21SA11A009",
      "name": "Isnaurokhmah",
      "address": "-",
      "email": "isna@amikompurwokerto.ac.id",
      "phone": "081315009695",
      "image": "assets/gambar/sdm2 23.webp",
      "position": "Informatika",
      "quotes": "Selesaikan apa yang sudah kamu mulai",
    },
    {
      "id": "21SA11A010",
      "name": "Nikmah Trinarsih",
      "address": "-",
      "email": "nikmah@amikompurwokerto.ac.id",
      "phone": "081315009695",
      "image": "assets/gambar/mm1 23.webp",
      "position": "Informatika",
      "quotes": "Agar silaturahmi tidak terputus, Bolehkan kita serius?",
    },
    {
      "id": "21SA11A011",
      "name": "Dhevran Baitu Abdillah Sintusa",
      "address": "-",
      "email": "dhevran@amikompurwokerto.ac.id",
      "phone": "081315009695",
      "image": "assets/gambar/mm2 23.webp",
      "position": "Informatika",
      "quotes": "Hukum ketiga Newton, kau harus meninggalkan sesuatu",
    },
    {
      "id": "21SA11A012",
      "name": "Rizky Widi Ardhiany",
      "address": "-",
      "email": "ardhiany@amikompurwokerto.ac.id",
      "phone": "081315009695",
      "image": "assets/gambar/cc 23.webp",
      "position": "Informatika",
      "quotes": "Setiap tantangan adalah peluang untuk tumbuh dan berkembang",
    },
    {
      "id": "21SA11A147",
      "name": "Ali Novian",
      "address": "Purbalingga",
      "email": "alinovian.edu@amikompurwokerto.ac.id",
      "phone": "081315009695",
      "image": "assets/gambar/.webp",
      "position": "Informatika",
      "quotes": "Minal Aidzin Wal Faizin, Mohon Maaf Lahir Batin",
    },
  ];

  List<String> get _availablePositions {
    final positions = students.map((e) => e["position"]!).toSet().toList();
    positions.sort();
    return ['Semua', ...positions];
  }

  List<Map<String, String>> get _filteredStudents {
    if (_selectedPosition == 'Semua') {
      return students;
    }
    return students.where((s) => s['position'] == _selectedPosition).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mahasiswa"), elevation: 4),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                const Icon(Icons.filter_list),
                const SizedBox(width: 8),
                Expanded(
                  child: DropdownButton<String>(
                    value: _selectedPosition,
                    isExpanded: true,
                    onChanged: (value) {
                      setState(() {
                        _selectedPosition = value!;
                      });
                    },
                    items:
                        _availablePositions.map((position) {
                          return DropdownMenuItem(
                            value: position,
                            child: Text(position),
                          );
                        }).toList(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child:
                _filteredStudents.isEmpty
                    ? const Center(
                      child: Text("Tidak ada data untuk jurusan ini"),
                    )
                    : ListView.separated(
                      padding: const EdgeInsets.all(8),
                      itemCount: _filteredStudents.length,
                      separatorBuilder:
                          (context, index) => const Divider(height: 1),
                      itemBuilder: (context, index) {
                        final student = _filteredStudents[index];
                        return Card(
                          elevation: 2,
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          child: ListTile(
                            leading: Hero(
                              tag: 'avatar-${student["id"]}',
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(student["image"]!),
                                backgroundColor: Colors.grey[200],
                              ),
                            ),
                            title: Text(
                              student["name"]!,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NIM: ${student["id"]}"),
                                Text("Program Studi: ${student["position"]}"),

                                // Email scroll jika panjang
                                Row(
                                  children: [
                                    const Text("Email: "),
                                    Expanded(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Text(
                                          student["email"]!,
                                          style: const TextStyle(),
                                          softWrap: false,
                                          overflow: TextOverflow.visible,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // Telepon tetap biasa
                                Text("Telp: ${student["phone"]}"),
                              ],
                            ),

                            trailing: const Icon(Icons.chevron_right),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          DetailMahasiswa(student: student),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
          ),
        ],
      ),
    );
  }
}

class DetailMahasiswa extends StatelessWidget {
  final Map<String, String> student;

  const DetailMahasiswa({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(student["name"]!)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder:
                      (_) => Dialog(
                        backgroundColor: Colors.black87,
                        insetPadding: const EdgeInsets.all(10),
                        child: InteractiveViewer(
                          panEnabled: true,
                          minScale: 0.5,
                          maxScale: 4,
                          child: GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Hero(
                              tag: 'avatar-${student["id"]}',
                              child: Image.asset(
                                student["image"]!,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                );
              },
              child: Hero(
                tag: 'avatar-${student["id"]}',
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(student["image"]!),
                  backgroundColor: Colors.grey[200],
                ),
              ),
            ),

            const SizedBox(height: 20),
            Text(
              student["name"]!,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              student["position"]!,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 20),
            _buildInfoCard(context),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: const Color(0xFFF9F4FF),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoRow("NIM", student["id"]!),
            _buildInfoRow("Alamat", student["address"]!),
            _buildInfoRow("Email", student["email"]!),
            _buildInfoRow("Telepon", student["phone"]!),
            const SizedBox(height: 16),
            const Divider(thickness: 1),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Kata-Kata Hari Ini",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '"${student["quotes"]}"',
              style: GoogleFonts.poppins(fontSize: 18, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Text(": "),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
