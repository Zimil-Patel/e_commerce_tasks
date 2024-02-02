import 'package:flutter/material.dart';

class LetterCover extends StatelessWidget {
  const LetterCover({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff4caf50),
            title: const Text('Letter Cover', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              height: 280,
              width: 280,
              decoration: const BoxDecoration(
                color:  Color(0xff4caf50),
                border: Border.symmetric(
                    vertical: BorderSide(width: 120, color: Color(0xff4caf50)),
                    horizontal: BorderSide(width: 120, color: Color(0xff72c075))
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
