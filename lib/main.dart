import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('KING INDO ASIA ', // isi tulisan
          style: TextStyle( // tampilan tulisan
            fontSize: 30,
            color: Colors.blueAccent,
            fontWeight: FontWeight.w500
          )),
        ),
      ),
    ),
  );
}