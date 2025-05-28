import 'package:flutter/material.dart';

class Dosen extends StatefulWidget {
  const Dosen({super.key});

  @override
  State<Dosen> createState() => _DosenState();
}

class _DosenState extends State<Dosen> {
  List<Map<String, dynamic>> dosenList = [
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
      "email": "alinovian.edu@gmail.com",
      "phone": "081315009695",
      "image": "assets/gambar/alnov.png",
      "position": "Informatika",
      "quotes": "Minal Aidzin Wal Faizin, Mohon Maaf Lahir Batin",
    },
  ];

  String alamatGambar = "assets/gambar/jardas.webp";
  String namaDosen = "Mohamad Ridho Mubarok";
  String emailDosen = "ridho@amikompurwokerto.ac.id";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Asisten Dosen")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              image: DecorationImage(
                image: AssetImage(alamatGambar), // Changed to AssetImage
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  color: Colors.black54,
                  child: Text(
                    namaDosen,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  color: Colors.black54,
                  child: Text(
                    emailDosen,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
              ),
              itemCount: dosenList.length,
              itemBuilder: (context, index) {
                final dosen = dosenList[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      namaDosen = dosen["name"];
                      emailDosen = dosen["email"];
                      alamatGambar = dosen["image"];
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(
                          dosen["image"],
                        ), // Changed to AssetImage
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              dosen["name"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
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
