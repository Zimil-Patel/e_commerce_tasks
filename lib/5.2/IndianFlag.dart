import 'package:flutter/material.dart';

class IndianFlag extends StatelessWidget {
  const IndianFlag({super.key});

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
          backgroundColor: const Color(0xff2196f3),
          centerTitle: true,
          elevation: 8,
          shadowColor: Colors.black,
          title: const Text('An Indian Flag', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),),
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
                    Color(0xff2195f2),
                    Color(0xff3e54b7),
                  ])
            ),
            child: Container(
              height: 160,
              width: 280,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                gradient: const LinearGradient(
                  colors: [
                    Colors.deepOrange,
                    Colors.deepOrange,
                    Colors.white,
                    Color(0xff388e3c),
                    Color(0xff388e3c)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
              child: const Text(
              "✴",
              style: TextStyle(
                  color: Color(0xff00008b),
                  fontSize: 50,
                  fontWeight: FontWeight.w500),
            ),
            ),
          )
        ),
      ),
    );
  }
}

class FlutterStatusbarcolor {
}
