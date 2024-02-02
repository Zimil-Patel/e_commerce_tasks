import 'package:flutter/material.dart';

class AShadowBtn extends StatelessWidget {
  const AShadowBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xff009688),
          centerTitle: true,
          elevation: 8,
          shadowColor: Colors.black,
          title: const Text('A Shadow Button', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),),
        ),
        body: Center(
          child: Container(
            height: 80,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0xff009688), width: 1),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xff009688),
                      blurRadius: 15,
                      spreadRadius: 4
                  )
                ]
            ),
            alignment: Alignment.center,
            child: const Text('Tap', style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold
            ),),
          ),
        ),
      ),
    );
  }
}
