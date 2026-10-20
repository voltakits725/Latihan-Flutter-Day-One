import 'package:flutter/material.dart';
import 'package:hello_world/card.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( title: 'Pertemuan 4',
      debugShowCheckedModeBanner: false,
      
      home: CardImage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Flutter'),
      backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
            Text(
              'KING INDO',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Colors.redAccent
              ),
            ),
            SizedBox(height: 12,),
            Text(
              'Asap Karhutla semakin tebal, sehingga jarak pandang hanya sebatas mengagumi',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.pinkAccent
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Teori Gravitasi Sir Isaac Newton akan jadi sia-sia ketika melihat matamu saja seluruh duniaku jatuh disana. ~~ Rafly ~~',
              maxLines: 2,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.pinkAccent,
                
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class MyProfil extends StatelessWidget {
  const MyProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Profil'),
      backgroundColor: Colors.blue,
      leading: Icon(Icons.man_2_sharp),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: (){
          print('HIDUP JOKOWIIIII');
        }, icon: Icon(Icons.notification_add_sharp),
        ),
        Icon(Icons.search),
        
        Icon(Icons.mail)
      ],
      ),
      body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person, size: 60, color: Colors.red,),
          Text(
            'Nama: Rafly Kurniawan',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.blue,
              fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'NIM: 1124160165',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                color: Colors.blue,
                decoration: TextDecoration.lineThrough
              ),
            ),
            SizedBox(height: 7),
            Text(
              'Teori Gravitasi Sir Isaac Newton akan jadi sia-sia ketika melihat matamu saja seluruh duniaku jatuh disana. ~~ Rafly ~~',
              maxLines: 2,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.pinkAccent,
                
              ),
            ),
            SizedBox(height: 7),
            Text(
              'Asap Karhutla semakin tebal, sehingga jarak pandang hanya sebatas mengagumi',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.pinkAccent
              ),
            ),

          ],
        ),
      )
    );
  }
}

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }


// import 'package:flutter/material.dart';
// void main() {
//   runApp(const MyApp());
      
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Aplikasi Pertamaku'), backgroundColor: Colors.lightBlue,),
//         body: Center(
//           child: const RichTextWidget(),
//         ),
//       ),
//     );
//   }
// }

// // latihan 1: Text Style Dasar, font size dan color
// class BasicTextWidget extends StatelessWidget {
//   const BasicTextWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
   
//     return const Text(
//       'Hallo KING INDO ASEAN',
//       style: TextStyle(
//         fontSize: 20,
//         color: Colors.redAccent
//       ),
//     );
//   }
// }


// // --- Latihan 2: Font, Weight, Dan Style
// class FontTextWidget extends StatelessWidget {
//   const FontTextWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Teks Normal',
//           style: TextStyle(
//             fontSize: 15,
//           ),
//         ),

//         Text(
//           'Bold',
//           style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.bold,
//           ),
//         ),

//         Text(
//           'Semi Bold w600',
//           style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.w600,
//           ),
//         ),

//         Text(
//           'Italic',
//           style: TextStyle(
//             fontSize: 20,
//             fontStyle: FontStyle.italic,
//           ),
//         ),

//       ],
//     );
//   }
// }

// // latihan 3: Spacing(word spacing, letter spacing, height)
// class SpacingTextWidget extends StatelessWidget {
//   const SpacingTextWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Teks Normal',
//           style: TextStyle(
//             fontSize: 15,
//           ),
//         ),
//         SizedBox(height: 20),
//         Text(
//           'Letter Spacing',
//           style: TextStyle(
//             fontSize: 15,
//             letterSpacing: 5,
//           ),
//         ),
//         SizedBox(height: 20),

//         Text(
//           'Word Spacing',
//           style: TextStyle(
//             fontSize: 15,
//             wordSpacing: 10,
//           ),
//         ),
//         SizedBox(height: 20),
//         Text(
//           'Line 1\nLine 2\nLine 3',
//           style: TextStyle(
//             fontSize: 15,
//             height: 2
//           ),
//         ),
//       ],
//     );
//   }
// }
// // latihan 4: Decoration dan shadow(underline, line trough)
// class DecorationTextWidget extends StatelessWidget {
//   const DecorationTextWidget({super.key});

//   @override
//   Widget build(BuildContext context) {

//     const Widget teksUnderline = Text(
//       'Underline',
//       style: TextStyle(
//         fontSize: 15,
//         decoration: TextDecoration.underline,
//       ),
//     );

//     const Widget teksLineTrough = Text(
//         'Contoh Line trough',
//         style: TextStyle(
//           fontSize: 15,
//           decoration: TextDecoration.lineThrough,
//         ),
//       );

//     const Widget TEKSBACKGROUND = Text(
//           'Background',
//           style: TextStyle(
//             fontSize: 20,
//             backgroundColor: Colors.lightBlueAccent, // Ngasih blok warna di belakang teks
//           ),
//         );

//     const Widget TeksShadow = Text(
//           'Text Shadow',
//           style: TextStyle(
//             fontSize: 30,
//             shadows: [
//               Shadow(
//                 offset: Offset(10, 10), 
//                 blurRadius: 15, 
//               ),
//             ],
//           ),
//         );

//         const Widget jarakTinggi = SizedBox(height: 20);

    
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       teksUnderline,
//       teksLineTrough,
//       TEKSBACKGROUND,
//       TeksShadow,
//       jarakTinggi,
//       ],
//     );
//   }
// }

// // latihan 5: Text alignment
// // --- PRAKTIK 5: TEXT ALIGNMENT ---
// class AlignmentTextWidget extends StatelessWidget {
//   const AlignmentTextWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // 1. KITA BIKIN TEKS DENGAN BERBAGAI ALIGNMENT
//     const Widget rataKiri = Text(
//       'Left',
//       textAlign: TextAlign.left, // Teks nempel ke garis kiri[cite: 20]
//     );

//     const Widget rataTengah = Text(
//       'Center',
//       textAlign: TextAlign.center, // Teks pas di tengah-tengah wadah[cite: 20]
//     );

//     const Widget rataKanan = Text(
//       'Right',
//       textAlign: TextAlign.right, // Teks nempel ke garis kanan[cite: 20]
//     );

//     // Justify sangat berguna buat kalimat panjang biar pinggiran kiri-kanannya lurus
//     const Widget rataKiriKanan = Text(
//       'Justify: Flutter adalah framework untuk membuat aplikasi menggunakan satu codebase.',
//       textAlign: TextAlign.justify, // Rata kiri-kanan[cite: 20, 21]
//     );

//     const Widget spasi = SizedBox(height: 15);

//     // Kumpulkan semua teks ke dalam satu Column
//     const Widget susunanTeks = Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch, 
//       children: [
//         rataKiri,
//         spasi,
//         rataTengah,
//         spasi,
//         rataKanan,
//         spasi,
//         rataKiriKanan,
//       ],
//     );

//     // 2. KITA RETURN WADAH CONTAINER-NYA
//     return Container(
//       // Lebar double.infinity ini kunci biar textAlign bisa beraksi[cite: 20]
//       width: double.infinity, 
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         // Kita kasih garis kotak hitam biar kelihatan batas ruang teksnya[cite: 20]
//         border: Border.all(), 
//       ),
//       child: susunanTeks, 
//     );
//   }
// }

// // --- PRAKTIK 6: MAXLINES & OVERFLOW ---[cite: 21, 22]
// class OverflowTextWidget extends StatelessWidget {
//   const OverflowTextWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // 1. KITA BIKIN TEKS PANJANGNYA DULU
//     const Widget teksPanjang = Text(
//       'Flutter adalah framework UI dari Google '
//       'yang dapat digunakan untuk membuat aplikasi '
//       'Android, iOS, Web dan Desktop.',
//       maxLines: 2, // Membatasi tulisan hanya boleh tampil maksimal 2 baris
//       overflow: TextOverflow.clip, // Sisa teks yang kepanjangan akan diganti jadi "..."
//     );

//     // 2. KITA RETURN WADAHNYA
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         border: Border.all(), // Garis pembatas[cite: 22]
//       ),
//       child: teksPanjang, // Panggil teksnya di sini
//     );
//   }
// }

// // --- PRAKTIK 7: RICHTEXT & TEXTSPAN ---[cite: 23, 24]
// class RichTextWidget extends StatelessWidget {
//   const RichTextWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Lu minta langsung di-return, jadi kodenya persis kayak gini
//     return  RichText(
//       text: TextSpan(
//         // Ini gaya default (dasar) untuk semua teks di dalam TextSpan ini
//         style: TextStyle(
//           fontSize: 20,
//           color: Colors.black,
//         ),
//         children: [
//           TextSpan(
//             text: 'Saya sedang belajar ', // Mengikuti gaya default (hitam, normal)
//           ),
//           TextSpan(
//             text: 'Flutter',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.blue, // Kata "Flutter" ditimpa jadi tebal dan biru[cite: 24, 25]
//             ),
//           ),
//           TextSpan(
//             text: ' dan ', // Balik ke gaya default lagi[cite: 24]
//           ),
//           TextSpan(
//             text: 'Dart',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.green, // Kata "Dart" ditimpa jadi tebal dan hijau[cite: 24, 25]
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }