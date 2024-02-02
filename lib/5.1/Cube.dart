import 'package:flutter/material.dart';

class Cube extends StatelessWidget {
  const Cube({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff009688),
            title: const Text('3D Cube', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              height: 220,
              width: 200,
              decoration: const BoxDecoration(
                  color:  Color(0xff009688),
                  border: Border.symmetric(
                      vertical: BorderSide(width: 35, color: Color(0xff33aba0)),
                      horizontal: BorderSide(width: 35, color: Color(0xff4db6ac))
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
