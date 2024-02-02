import 'package:flutter/material.dart';

class Watch extends StatelessWidget {
  const Watch({super.key});

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xff423c62),
          centerTitle: false,
          elevation: 8,
          shadowColor: Colors.black,
          title: const Text('Watch', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),),
        ),
        body: Center(
            child: Container(
              height: height,
              width: width,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter ,
                      colors: [
                        Color(0xff423c62),
                        Color(0xff2295f1),
                      ])
              ),
              child: Container(
                height: 75,
                width: 200,
                decoration: BoxDecoration(
                    color: const Color(0xff436da1),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey.withOpacity(0.20), width: 1),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.20),
                          blurRadius: 7,
                          spreadRadius: 0,
                          offset: const Offset(4, 4)
                      )
                    ]
                ),
                alignment: Alignment.center,
                child: const Text('Flutter', style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w500
                ),),
              ),
            )
        ),
      ),
    );
  }
}

class FlutterStatusbarcolor {
}
