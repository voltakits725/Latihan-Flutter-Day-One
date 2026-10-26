# Aplikasi Mahasiswa 

Aplikasi Mahasiswa interaktif berbasis Flutter yang menampilkan profil, halaman tentang saya, dan katalog tech stack dengan implementasi navigasi dan tema dinamis.

## 🌟 Fitur Utama
* **Bottom Navigation Bar:** Navigasi instan antar 3 halaman utama (Profil, Tentang Saya, Tech Stack) tanpa penumpukan layar.
* **Dynamic Theme Switcher:** Mendukung Light Mode dan Dark Mode secara global yang dikendalikan melalui `FloatingActionButton`.
* **State Management Dasar:** Penggunaan `StatefulWidget` untuk mengelola status tema dan indeks tab navigasi.

## 🛠️ Widget & Konsep yang Digunakan
* **StatefulWidget & State Lifting:** Mengelola perubahan status UI dan meneruskan fungsi dari induk (`MyApp`) ke anak (`KerangkaNavigasi`).
* **BottomNavigationBar:** Menyusun menu navigasi persisten di bagian bawah layar.
* **Wrap & Layouting:** Menggunakan `Wrap`, `Column`, `Row`, dan `SizedBox` untuk menyusun tata letak yang fleksibel dan responsif.
* **Card & Elevation:** Memberikan efek kedalaman (3D) pada elemen profil dan daftar tech stack.
* **Asset Management:** Menampilkan gambar lokal (seperti logo bahasa pemrograman) melalui konfigurasi `pubspec.yaml`.

## 💻 Source Code Utama (main.dart)

```dart
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
```
