import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'TEKS NORMAL',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  
                ),
              ),
              
              SizedBox(height: 20),

              Text(
                'TEKS LETTERSPACCING',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 10,
                ),
              ),

              SizedBox(height: 40),

              Text(
                'TEKS WORD SPACING',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  wordSpacing: 15,
                ),
              ),
              Text(
                'Baris 1\nBaris 2\nBaris 3',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  height: 2
                ),
              ),
              Text(
                'Underline',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  decoration: TextDecoration.none,
                ),
              ),
               Text(
                'Line Through',
                style: TextStyle(
                  fontSize: 24,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Text(
                'Background',
                style: TextStyle(
                  fontSize: 24,
                  backgroundColor: Colors.yellow,
                ),
              ),
              Text(
                'Text Shadow',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  shadows: [
                    Shadow(
                      offset: Offset(12,12),
                      blurRadius: 15,
                    )
                  ]
                ),
              )
            ],
          )
        ),
      )
    )
  );
}