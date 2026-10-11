import 'package:flutter/material.dart';

void main() {
  runApp(const AplikasiSederhana());
}

class AplikasiSederhana extends StatelessWidget {
  const AplikasiSederhana({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Kanjut'), backgroundColor: Colors.purpleAccent,),
      )
    );
  }
}




