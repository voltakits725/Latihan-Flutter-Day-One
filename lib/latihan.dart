import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
      
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Aplikasi Pertamaku'), backgroundColor: Colors.lightBlue,),
        body: Center(
          child: const TextAlignmentWidget(),
        ),
      ),
    );
  }
}

// latihan 1: Text Style Dasar, font size dan color
class BasicTextWidget extends StatelessWidget {
  const BasicTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
   
    return const Text(
      'Hallo KING INDO ASEAN',
      style: TextStyle(
        fontSize: 20,
        color: Colors.redAccent
      ),
    );
  }
}


// --- Latihan 2: Font, Weight, Dan Style
class FontTextWidget extends StatelessWidget {
  const FontTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Teks Normal',
          style: TextStyle(
            fontSize: 15,
          ),
        ),

        Text(
          'Bold',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),

        Text(
          'Semi Bold w600',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),

        Text(
          'Italic',
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),

      ],
    );
  }
}

// latihan 3: Spacing(word spacing, letter spacing, height)
class SpacingTextWidget extends StatelessWidget {
  const SpacingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Teks Normal',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Letter Spacing',
          style: TextStyle(
            fontSize: 15,
            letterSpacing: 5,
          ),
        ),
        SizedBox(height: 20),

        Text(
          'Word Spacing',
          style: TextStyle(
            fontSize: 15,
            wordSpacing: 10,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Line 1\nLine 2\nLine 3',
          style: TextStyle(
            fontSize: 15,
            height: 2
          ),
        ),
      ],
    );
  }
}
// latihan 4: Decoration dan shadow(underline, line trough)
class DecorationTextWidget extends StatelessWidget {
  const DecorationTextWidget({super.key});

  @override
  Widget build(BuildContext context) {

    const Widget teksUnderline = Text(
      'Underline',
      style: TextStyle(
        fontSize: 15,
        decoration: TextDecoration.underline,
      ),
    );

    const Widget teksLineTrough = Text(
        'Contoh Line trough',
        style: TextStyle(
          fontSize: 15,
          decoration: TextDecoration.lineThrough,
        ),
      );

    const Widget TEKSBACKGROUND = Text(
          'Background',
          style: TextStyle(
            fontSize: 20,
            backgroundColor: Colors.lightBlueAccent, // Ngasih blok warna di belakang teks
          ),
        );

    const Widget TeksShadow = Text(
          'Text Shadow',
          style: TextStyle(
            fontSize: 30,
            shadows: [
              Shadow(
                offset: Offset(10, 10), 
                blurRadius: 15, 
              ),
            ],
          ),
        );

        const Widget jarakTinggi = SizedBox(height: 20);

    
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      teksUnderline,
      teksLineTrough,
      TEKSBACKGROUND,
      TeksShadow,
      jarakTinggi,
      ],
    );
  }
}

// latihan 5: Text alignment
class TextAlignmentWidget extends StatelessWidget {
  const TextAlignmentWidget({super.key});



  @override
  Widget build(BuildContext context) {

    const Widget teksKiri = Text(
      'Left',
      textAlign: TextAlign.left,
    );

    const Widget teksTengah = Text(
      'Center',
      textAlign: TextAlign.center,
    );

    const Widget teksKanan = Text(
      'Right',
      textAlign: TextAlign.right,
    );

    const Widget teksJustify = Text(
      'Justify: Flutter adalah framework'
      'untuk membuat aplikasi mobile'
      'dan satu codebase',
      textAlign: TextAlign.justify,
    );

    const Widget jarakTinggi = SizedBox(height: 10);

    const Widget susunanTeks = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        teksKiri,
        jarakTinggi,
        teksTengah,
        jarakTinggi,
        teksKanan,
        jarakTinggi,
        teksJustify,
      ],);


    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: susunanTeks,
    );
  }
}