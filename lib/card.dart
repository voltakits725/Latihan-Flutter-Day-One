import 'package:flutter/material.dart';

void main(){
  runApp(MyCard());
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Card'),
      backgroundColor: Colors.lightBlue,
      centerTitle: true,
      leading: Icon(Icons.menu_open_rounded),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            elevation: 4, // ngatur tebal shadow
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // jarak luar card
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),// ngatur lengkungan sudut (border radius)
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: const CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Icon(Icons.code, color: Colors.white,),
              ),

              title: const Text(
                'Rafly',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              
              subtitle: const Text('Fullstack Mobile Developer'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16,),
              onTap: () {
                // Masukin logic routing atau aksi di sini
                print('Card di-klik!');
              },
            ),
          ),
          Card()
        ],
      )
    );
  }
}

class CardImage extends StatelessWidget {
  const CardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  Card(
        elevation: 4,
        margin: const EdgeInsets.all(16),
        // Bikin sudut card melengkung
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        // Wajib ditambahin biar ujung gambar ikut melengkung
        clipBehavior: Clip.antiAlias, 
        child: Column(
          mainAxisSize: MainAxisSize.min, // Biar tinggi Card menyesuaikan isi
          crossAxisAlignment: CrossAxisAlignment.start, // Teks rata kiri
          children: [
            // 1. Bagian Gambar
            Image.network(
              'https://picsum.photos/400/200', // Ganti pakai Image.asset() kalau pakai gambar lokal
              height: 200,
              width: double.infinity, // Biar gambar penuhi lebar layar
              fit: BoxFit.cover, // Biar gambar gak gepeng
            ),
            
            // 2. Bagian Teks
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Belajar UI Layout di Flutter',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8), // Jarak antara judul dan deskripsi
                  Text(
                    'Menggabungkan gambar dan teks ke dalam Card biar tampilan aplikasi makin rapi dan modern.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}