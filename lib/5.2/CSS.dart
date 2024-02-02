import 'package:flutter/material.dart';

class CssGradient extends StatelessWidget {
  const CssGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xfff1447e),
          centerTitle: true,
          elevation: 8,
          shadowColor: Colors.black,
          title: const Text('A Shadow Button', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),),
        ),
        body: Center(
          child: Container(
            height: 70,
            width: 200,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffcf4f98),
                      Color(0xfffe3e79),
                      Color(0xffff5669),
                      Color(0xffff5669),

                    ]
                ),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  const BoxShadow(
                      color: Colors.white,
                      blurRadius: 0,
                      spreadRadius: 0,
                      offset: Offset(0, -12)
                  ),
                  BoxShadow(
                      color: const Color(0xffe34987).withOpacity(0.70),
                      blurRadius: 36,
                      spreadRadius: 0,
                      offset: const Offset(0, 15)
                  ),
                  BoxShadow(
                      color: const Color(0xfffe5768).withOpacity(0.70),
                      blurRadius: 36,
                      spreadRadius: 0,
                      offset: const Offset(0, 15)
                  ),
                ]
            ),
            alignment: Alignment.center,
            child: const Text('Call to action', style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500
            ),),
          ),
        ),
      ),
    );
  }
}
