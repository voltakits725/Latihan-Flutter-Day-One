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

          elevation: 10,
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
                    Icon(Icons.code, color: Colors.blueAccent,),
                    SizedBox(width: 8,),
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
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Detail Profil'),

      ),
    );
  }
}


