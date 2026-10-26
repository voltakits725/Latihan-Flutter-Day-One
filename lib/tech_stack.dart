import 'package:flutter/material.dart';

class TechStack extends StatelessWidget {
  const TechStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tech Stack'),
      backgroundColor: Colors.teal,
      ),
      body: Card(
        elevation: 8,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color:  Colors.white, // Warna background gelap
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
       
        
        const Row(
          children: [
            Text('🛠️', style: TextStyle(fontSize: 22)),
            SizedBox(width: 10),
            Text(
              'Tech Stack',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ],
        ),
        const Divider(
          color: Colors.white24,
          height: 25,
          thickness: 1,
        ),

        
        
        
        const Text(
          'Bahasa Pemrograman',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
        ),
        const SizedBox(height: 12),
        
        // Wrap untuk deretan logo (Otomatis turun baris)
        Wrap(
          spacing: 15, // Jarak kiri-kanan
          runSpacing: 15, // Jarak atas-bawah kalau turun baris
          children: [
            
            // ITEM 1: JavaScript
            SizedBox(
                width: 90, // Gua lebarin dikit dari 80 jadi 90 biar ada ruang nafas buat Card-nya
                child: Card(
                  elevation: 8, // Ini yang bikin efek bayangan melayang!
                  color: Colors.white, // Bisa lu ganti kalau mau warna lain
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Ujung card melengkung
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4), // Jarak aman di dalam card
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // 1. Gambarnya
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: Image.asset('assets/js.png', fit: BoxFit.contain), 
                        ),
                        
                        const SizedBox(height: 8), 
                        
                        // 2. Teksnya
                        const Text(
                          'JavaScript', 
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: Colors.teal, 
                            fontSize: 11, 
                            fontWeight: FontWeight.bold,
                          ), 
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            // ITEM 2: PHP
            SizedBox(
              width: 90,
              child: Card(
                elevation: 4,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 4),
                  child: Column(
                    children: [
                      SizedBox(width: 40, height: 40, child: Image.asset('assets/dart.png', fit: BoxFit.contain,),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                          'Dart', 
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: Colors.teal, 
                            fontSize: 11, 
                            fontWeight: FontWeight.bold,
                          ), 
                        ),
                    ],
                  ),
                ),
              ),
            ),

            // ITEM 3: Dart
            SizedBox(
              width: 90,
              child: Card(
                elevation: 4,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 4),
                  child: Column(
                    children: [
                      SizedBox(width: 40, height: 40, child: Image.asset('assets/python.png', fit: BoxFit.contain,),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                          'Python', 
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: Colors.teal, 
                            fontSize: 11, 
                            fontWeight: FontWeight.bold,
                          ), 
                        ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              width: 90,
              child: Card(
                elevation: 4,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 4),
                  child: Column(
                    children: [
                      SizedBox(width: 40, height: 40, child: Image.asset('assets/CSharp.png', fit: BoxFit.contain,),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                          'C Sharp', 
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: Colors.teal, 
                            fontSize: 11, 
                            fontWeight: FontWeight.bold,
                          ), 
                        ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              width: 90,
              child: Card(
                elevation: 8,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 4),
                  child: Column(
                    children: [
                      SizedBox(width: 40, height: 40, child: Image.asset('assets/Java.png', fit: BoxFit.contain,),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                          'Java', 
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: Colors.teal, 
                            fontSize: 11, 
                            fontWeight: FontWeight.bold,
                          ), 
                        ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),

        const SizedBox(height: 25), // Jarak sebelum masuk kategori Frontend

        // ==========================================
        // KATEGORI 2: FRONTEND
        // ==========================================
        const Text(
          'Pengembangan Web',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
        ),
        const SizedBox(height: 12),
        
        Wrap(
          spacing: 15,
          runSpacing: 15,
          children: [
            // ITEM 1: HTML
            SizedBox(
              width: 90,
              child: Card(
                elevation: 4,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 4),
                  child: Column(
                    children: [
                      SizedBox(width: 40, height: 40, child: Image.asset('assets/html.png', fit: BoxFit.contain,),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                          'HTML', 
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: Colors.teal, 
                            fontSize: 11, 
                            fontWeight: FontWeight.bold,
                          ), 
                        ),
                    ],
                  ),
                ),
              ),
            ),

            
            SizedBox(
              width: 90,
              child: Card(
                elevation: 4,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 4),
                  child: Column(
                    children: [
                      SizedBox(width: 40, height: 40, child: Image.asset('assets/tailwind.png', fit: BoxFit.contain,),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                          'Tailwind', 
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: Colors.teal, 
                            fontSize: 11, 
                            fontWeight: FontWeight.bold,
                          ), 
                        ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              width: 90,
              child: Card(
                elevation: 4,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 4),
                  child: Column(
                    children: [
                      SizedBox(width: 40, height: 40, child: Image.asset('assets/css.png', fit: BoxFit.contain,),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                          'CSS', 
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: Colors.teal, 
                            fontSize: 11, 
                            fontWeight: FontWeight.bold,
                          ), 
                        ),
                    ],
                  ),
                ),
              ),
            ),

            

            SizedBox(
              width: 90,
              child: Card(
                elevation: 4,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 4),
                  child: Column(
                    children: [
                      SizedBox(width: 40, height: 40, child: Image.asset('assets/vue.png', fit: BoxFit.contain,),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                          'Vue', 
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: Colors.teal, 
                            fontSize: 11, 
                            fontWeight: FontWeight.bold,
                          ), 
                        ),
                    ],
                  ),
                ),
              ),
            ),

                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}