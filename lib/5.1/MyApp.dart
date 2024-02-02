import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff7cb342),
        appBar: AppBar(title: const Text('My App',
          style: TextStyle(color: Colors.white, fontSize: 20),),
          backgroundColor: const Color(0xff8bc34a),
          centerTitle: true,),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
              color: Color(0xff4caf50)
            ),
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              height: 250,
              width: 250,
              decoration: const BoxDecoration(
                color: Color(0xffb2ff59)
              ),
              child: Text('OOOO', style: TextStyle(fontSize: 120, color: Colors.black.withOpacity(0.50), letterSpacing: -40),),
            ),
            ),
          ),
        ),
      );
  }
}
