import 'package:flutter/material.dart';

class LaunchBtn extends StatelessWidget {
  const LaunchBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          elevation: 8,
          shadowColor: Colors.black,
          backgroundColor: const Color(0xff4caf50),
          title: const Text('Launch Button', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,),
          )
        ),
        body: Center(
          child: Container(
            height: 170,
            width: 170,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xff0D750A),
                  blurStyle: BlurStyle.normal,
                  blurRadius: 20,
                  spreadRadius: 12,
                  ),
              ]
            ),
            child: const Text('GO',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 25,
                  color: Colors.white),
            ),
          )
        ),
      ),
    );
  }
}
