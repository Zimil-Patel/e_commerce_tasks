
import  'package:flutter/material.dart';

class DarkShadow extends StatelessWidget {
  const DarkShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          shadowColor: Colors.black,
          elevation: 8,
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          title: const Text('Dark Shadow Button', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),),
        ),
        body: Center(
          child: Container(
            height: 60,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.redAccent, width: 1),
              boxShadow: const [
                BoxShadow(
                  color: Colors.redAccent,
                  blurRadius: 20,
                  spreadRadius: 1
                )
              ]
            ),
            alignment: Alignment.center,
            child: const Text('Tap', style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400
            ),),
          ),
        ),
      ),
    );
  }
}
