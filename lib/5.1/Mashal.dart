import 'package:flutter/material.dart';

class Mashal extends StatelessWidget {
  const Mashal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child:  Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff795548),
            centerTitle: true,
            title: const Text('Mashal',
              style: TextStyle(fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),),
          ),
          body: Center(
            child: Container(
              height: 150,
              width: 120,
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                color: Color(0xff795548),
                border: Border.symmetric(
                  vertical: BorderSide(color: Colors.white, width: 35),
                  horizontal: BorderSide(
                    color: Color(0xFF87665B),
                    width: 20,
                  ),
                ),
              ),
              child: const Text('🔥', style: TextStyle(fontSize: 36, height: -2.2),),
            ),
          ),
        )
      ),
    );
  }
}
