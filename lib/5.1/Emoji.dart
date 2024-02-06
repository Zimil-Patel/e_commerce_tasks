import 'package:flutter/material.dart';

class Emoji extends StatelessWidget {
  const Emoji({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xff929292),
          toolbarHeight: 15,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 10,
                child: Container(
                  color: Colors.white,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 300,
                        width: 300,
                        decoration: const BoxDecoration(
                            color: Colors.orange, shape: BoxShape.circle),
                      ),
                      Positioned(
                        top: 245,
                        child: Container(
                          height: 230,
                          width: 250,
                          alignment: Alignment.topCenter,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                        ),
                      ),
                      Positioned(
                          top: 225,
                          child: Container(
                            height: 230,
                            width: 230,
                            decoration: const BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                          )),
                      Positioned(
                          top: 300,
                          right: 170,
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                          )),
                      Positioned(
                          top: 300,
                          left: 170,
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                          )),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.orange,
                  alignment: Alignment.center,
                  child: const Text(
                    'Emoji',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
