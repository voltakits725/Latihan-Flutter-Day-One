import 'package:flutter/material.dart';
import 'package:hello_world/card.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Aplikasi Mahasiswa',
      theme: ThemeData.light(),
      //darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,

      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: Colors.blue,
      //   ),
      // ),

      
      //home: MyCard(),
      home: ProfilPage(),
      
    );
    
  }
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard Mahasiswa'),
      backgroundColor: Colors.blue,
      leading: Icon(Icons.menu, color: Colors.white,),
      centerTitle: true,
      ),
      body: 
      Center(
        child: Card(

          elevation: 25,
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 20), // Jarak kiri-kanan
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // Bikin ujungnya melengkung 15px
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.account_circle, size: 60, color: Colors.indigo
                ),
                const SizedBox(height: 10),
                
               
                const Text(
                  'Rafly', 
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blueAccent,
                      child: Icon(Icons.code, color: Colors.white,),
                    ),
                    
                    SizedBox(width: 8),
                    const Text(
                      'Calon Fullstack Developer',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                ),
                
               
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: (){
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HalamanDetailProfil(),
                      ),
                     );
                    }
                  , child: const Text('Lihat detail')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HalamanDetailProfil extends StatelessWidget {
  const HalamanDetailProfil({super.key});

  @override
  Widget build(BuildContext context) {
    // Fungsi pembantu untuk mencetak baris dengan peluru (bullet), emoji, dan teks yang rapi
    Widget _bikinListBullet(String emoji, String teks) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 12), // Jarak antar baris
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Titik bullet putih
            const Text(
              '•  ', 
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)
            ),
            // Emoji
            Text('$emoji  ', style: const TextStyle(fontSize: 16)),
            // Teks utama dibungkus Expanded agar teks panjang yang turun ke bawah tidak nabrak layar
            Expanded(
              child: Text(
                teks,
                style: const TextStyle(color: Colors.white, fontSize: 15, height: 1.4),
              ),
            ),
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Detail Profil'),
      backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          
          children: [
            SizedBox(height: 20),
            Card(
              elevation: 8,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.teal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start, // Memaksa semua teks di bawah jadi rata kiri
                  children: [
                  
                    const Center(
                      child: CircleAvatar(
                        radius: 35, // Ukuran icon
                        backgroundColor: Colors.tealAccent,
                        child: Icon(Icons.person, color: Colors.white, size: 40),
                      ),
                    ),
                    
                    const SizedBox(height: 20), 
                    
                    const Text(
                      'Halo, Saya Rafly Kurniawan',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text('Mahasiswa Teknik Informatika'),
                    const Text('Fullstack Mobile Developer'),
                    
                    const SizedBox(height: 15), 
                    const Text(
                      'Saya adalah mahasiswa Teknik Informatika yang tertarik pada pengembangan aplikasi web dan mobile.',
                      textAlign: TextAlign.justify, 
                    ),
                    
                    const SizedBox(height: 10),
                    
                    const Text(
                      'Saat ini saya sedang mempelajari pengembangan aplikasi secara fullstack, mulai dari frontend, backend, database, hingga mobile development.',
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),           
            Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color:  Colors.teal, // Warna gelap mirip desain lu
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 1. HEADER TENTANG SAYA
                    const Row(
                      children: [
                        Text('🚀', style: TextStyle(fontSize: 22)),
                        SizedBox(width: 10),
                        Text(
                          'Tentang Saya',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    
                    // 2. GARIS PEMBATAS
                    const Divider(
                      color: Colors.white24, // Garis tipis transparan
                      height: 25,
                      thickness: 1,
                    ),

                    // 3. DAFTAR LIST (Menggunakan fungsi pembantu agar kode rapi)
                    _bikinListBullet('🎓', 'Mahasiswa Teknik Informatika'),
                    _bikinListBullet('💻', 'Tertarik pada Fullstack Development'),
                    _bikinListBullet('🌱', 'Sedang mempelajari Docker, Flutter & Dart'),
                    _bikinListBullet('🗄️', 'Tertarik pada pengembangan API dan database'),
                    _bikinListBullet('🛠️', 'Suka belajar melalui pembuatan project'),
                    _bikinListBullet('📱', 'Sedang mengembangkan kemampuan mobile development dengan Flutter'),
                    _bikinListBullet('🧪', 'Menggunakan Bruno untuk menguji REST API'),
                  ],
                ),
              ),
            )

          ],
        )
        )
        
      ),
    );
  }
}


