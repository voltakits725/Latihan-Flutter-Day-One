Aplikasi Mahasiswa 🎓


Aplikasi interaktif yang berisi profil mahasiswa, deskripsi diri, dan katalog Tech Stack.

🌟 Fitur Utama

Bottom Navigation Bar: Perpindahan antar 3 halaman utama (Profil, Tentang Saya, Tech Stack) secara instan tanpa tumpukan layar (stacking), memberikan User Experience (UX) setara aplikasi modern.

Dynamic Theme Switcher: Fitur perpindahan mode Terang (Light Mode) dan Gelap (Dark Mode) menggunakan saklar Floating Action Button yang dikendalikan melalui State Lifting.

Responsive Layout: Halaman dirancang agar aman dari error overflow saat dibuka di berbagai ukuran layar HP.

🛠️ Materi & Widget yang Diterapkan

StatefulWidget & State Lifting: Mengelola state index tab navigasi dan meneruskan fungsi perubahan tema (_gantiTema) dari komponen induk ke komponen anak.

Wrap Layout: Menyusun Card logo tech stack agar secara otomatis turun baris (fleksibel) tanpa memicu error batas layar.

Card & Elevation: Memberikan efek visual 3D (floating/shadow) pada komponen dashboard dan katalog skills.

Widget Fundamental: Penggunaan SingleChildScrollView (agar layar bisa di-scroll), kombinasi Column & Row, CircleAvatar (foto profil), serta pemanggilan gambar lokal dari folder assets.

💻 Source Code Utama (main.dart)

Berikut adalah struktur kode utama yang menangani Routing Navigation Bar dan Tema Aplikasi:

import 'package:flutter/material.dart';
import 'package:hello_world/about.dart';
import 'package:hello_world/detail_profil.dart';
import 'package:hello_world/tech_stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  bool _isDarkMode = false;

  void _gantiTema() {
    setState(() {
      _isDarkMode = !_isDarkMode; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Mahasiswa',
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      
      home: KerangkaNavigasi(
        isDarkMode: _isDarkMode,
        fungsiGantiTema: _gantiTema, 
      ),
    );
  }
}

class KerangkaNavigasi extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback fungsiGantiTema;
  
  // Constructor wajib buat nerima titipan
  const KerangkaNavigasi({super.key, required this.isDarkMode, required this.fungsiGantiTema});

  @override
  State<KerangkaNavigasi> createState() => _KerangkaNavigasiState();
}

class _KerangkaNavigasiState extends State<KerangkaNavigasi> {
  int _selectedIndex = 0;

  final List<Widget> _daftarHalaman = [
    const ProfilPage(),
    const AboutMe(),
    const TechStack(),
  ];

  void _ketikaTabDitekan(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _daftarHalaman[_selectedIndex],
      
      // TOMBOL MELAYANG BUAT SAKLAR TEMA
      floatingActionButton: FloatingActionButton(
        onPressed: widget.fungsiGantiTema, 
        backgroundColor: widget.isDarkMode ? Colors.yellow[700] : Colors.black87,
        child: Icon(
          widget.isDarkMode ? Icons.light_mode : Icons.dark_mode,
          color: widget.isDarkMode ? Colors.black : Colors.white,
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, 
        onTap: _ketikaTabDitekan, 
        
        backgroundColor: widget.isDarkMode ? const Color(0xFF1E1E1E) : Colors.white,
        selectedItemColor: Colors.blueAccent, 
        unselectedItemColor: Colors.grey, 
        type: BottomNavigationBarType.fixed, 
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Tentang Saya',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'Tech Stack',
          ),
        ],
      ),
    );
  }
}
