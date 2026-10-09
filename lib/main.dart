import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Normal',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Semi Bold',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              )

            ],
          )
        ),
      )
    )
  );
}