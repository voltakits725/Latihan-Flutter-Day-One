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
      
      // 5. TOMBOL MELAYANG BUAT SAKLAR TEMA
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