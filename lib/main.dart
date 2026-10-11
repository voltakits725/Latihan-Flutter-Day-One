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
        appBar: AppBar(
          title: const Text('Buah Anjay'), 
          backgroundColor: Colors.green
        ),
        body: const Center(child: ProductWidget(),)
      ),
    );

  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {

    const Widget namaBuah = Text(
      'Apel Hijau Premium',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );

    const Widget hargaBuah = Text(
      'Rp. 100.000.000',
      style: TextStyle(
        fontSize: 16,
        color: Colors.redAccent,
        decoration: TextDecoration.lineThrough,
      ),
    );

    const Widget discountPrice = Text(
      'Rp 25.000 / kg',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.green,
        letterSpacing: 2, 
      ),
    );

    const Widget deskripsiBuah = Text(
      'Apel Khas Ngawiii',
      textAlign: TextAlign.justify, 
      style: TextStyle(
        fontSize: 16,
        height: 1.5, 
      ),
    );

     const Widget tinggiKecil = SizedBox(height: 5);
     const Widget tinggiBesar = SizedBox(height: 20);

   
    return Container(
      width: 320, 
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 2), 
      ),
      child: Column(
        
        mainAxisSize: MainAxisSize.min,
        
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: [
          namaBuah,
          tinggiBesar,
          hargaBuah,
          tinggiKecil,
          discountPrice,
          tinggiBesar,
          deskripsiBuah,
        ],
      ),
    );
  }
}




