import 'package:flutter/material.dart';

class GradientBtn extends StatelessWidget {
  const GradientBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff48416a),
        appBar: AppBar(
          backgroundColor: const Color(0xff48416a),
          centerTitle: true,
          elevation: 8,
          shadowColor: Colors.black,
          title: const Text('Gradient Button', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),),
        ),
        body: Center(
          child: Container(
            height: 75,
            width: 200,
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color(0xff982ab2),
                  Color(0xff5764d5),
                  Color(0xff2394f2)
                ]),
                borderRadius: BorderRadius.circular(35),
                border: Border.all(color: Colors.white, width: 1),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.20),
                      blurRadius: 5,
                      spreadRadius: 0,
                    offset: const Offset(4, 4)
                  )
                ]
            ),
            alignment: Alignment.center,
            child: const Text('Flutter', style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold
            ),),
          ),
        ),
      ),
    );
  }
}
