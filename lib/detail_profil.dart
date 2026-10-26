import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Page'),
      backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Card(
              elevation: 8,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.white,
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
                        color: Colors.teal,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text('Mahasiswa Teknik Informatika', style: TextStyle(color: Colors.teal),),
                    const Text('Fullstack Mobile Developer', style: TextStyle(color: Colors.teal)),
                    
                    const SizedBox(height: 15), 
                    const Text(
                      'Saya adalah mahasiswa Teknik Informatika yang tertarik pada pengembangan aplikasi web dan mobile.',
                      style: TextStyle(color: Colors.teal),
                      textAlign: TextAlign.justify, 
                    ),
                    
                    const SizedBox(height: 10),
                    
                    const Text(
                      'Saat ini saya sedang mempelajari pengembangan aplikasi secara fullstack, mulai dari frontend, backend, database, hingga mobile development.',
                      style: TextStyle(color: Colors.teal),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
           
            ],
          )
        
      ),
    );
  }
}