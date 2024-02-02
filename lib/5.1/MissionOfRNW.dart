import 'package:flutter/material.dart';

class MissionOfRNW extends StatelessWidget {
  const MissionOfRNW({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xffff5252),
          title: const Text('Mission of RNW', style: TextStyle(fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500),),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 100,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 40),
            decoration: const BoxDecoration(
              color:  Color(0xfffcc8c8),
              border: Border(left: BorderSide(width: 12.5, color: Color(0xffff5252)))
            ),
            alignment: Alignment.center,
            child: RichText(
                text: const TextSpan(
                    children: [
              TextSpan(
                  text: 'Shaping "Skills" for "Scaling" higher\n',
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17, color: Colors.black)),
              TextSpan(
                  text: '-RNW',
                  style: TextStyle(fontSize: 17, color: Colors.black))
            ])),
            ),
          )
        ),
      );
  }
}
