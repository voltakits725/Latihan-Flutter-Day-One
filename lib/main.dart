import 'package:flutter/material.dart';

void main() {
  // runApp(const MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //   home: Scaffold(
  //     body: Center(
  //       child: Text('KING INDO')
  //       ),
  //       backgroundColor: Color.fromRGBO(255, 0, 149, 0.325))),
  //       );
 runApp(const MyClass());
  
}
class MyClass extends StatelessWidget {
  // Custom constructor
  const MyClass({super.key});

  //static const hello = 'Hello World';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: const Center(
        child:(BasicTextWidget())
        ),
        backgroundColor: const Color.fromRGBO(255, 0, 149, 0.325),
        appBar: AppBar(title: const Text('My Widget'))
        )
        );
       
  }
  
}
class BasicTextWidget extends StatelessWidget {
  const BasicTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello KING INDO',
      style: TextStyle(fontSize: 24, color: Colors.blue),
    );
  }
}

