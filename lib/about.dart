import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Saya'),
      backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 25),
            Card(
              elevation: 10,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('', style: TextStyle(fontSize: 22)),
                        SizedBox(width: 10),
                        Text(
                          'Tentang Saya',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.teal,
                      height: 25,
                      thickness: 1,
                      ),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
  
                            Icon(Icons.school, color: Colors.teal, size: 25,),
                            SizedBox(width: 15),
                            Expanded(
                              child: Text('Mahasiswa Teknik Informatika',
                              style: TextStyle(color: Colors.teal, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
  
                            Icon(Icons.computer, color: Colors.teal, size: 25,),
                            SizedBox(width: 15),
                            Expanded(
                              child: Text('Tertarik pada Fullstack Development',
                              style: TextStyle(color: Colors.teal, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 12,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
  
                            Icon(Icons.code, color: Colors.teal, size: 25,),
                            SizedBox(width: 15),
                            Expanded(
                              child: Text('Sedang Mempelajari Docker, Flutter & Dart',
                              style: TextStyle(color: Colors.teal, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
  
                            Icon(Icons.storage, color: Colors.teal, size: 25,),
                            SizedBox(width: 15),
                            Expanded(
                              child: Text('Tertarik pada pengembangan API Dan Database',
                              style: TextStyle(color: Colors.teal, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
  
                            Icon(Icons.handyman, color: Colors.teal, size: 25,),
                            SizedBox(width: 15),
                            Expanded(
                              child: Text('Suka belajar melalui pembuatan project',
                              style: TextStyle(color: Colors.teal, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Icon(Icons.smartphone, color: Colors.teal, size: 25,),
                            SizedBox(width: 15),
                            Expanded(
                              child: Text('Sedang Fokus Mengembangkan Kemampuan Mobile Development',
                              style: TextStyle(color: Colors.teal, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
  
                            Icon(Icons.science, color: Colors.teal, size: 25,),
                            SizedBox(width: 15),
                            Expanded(
                              child: Text('Menggunakan Bruno dan Postman untuk pengujian Rest API',
                              style: TextStyle(color: Colors.teal, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}