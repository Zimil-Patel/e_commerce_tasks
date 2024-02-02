
import 'package:flutter/material.dart';

class MixUp extends StatelessWidget {
  const MixUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffff5252),
            title: const Text('Mix-up', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              height: 400,
              width: double.infinity,
              alignment: Alignment.bottomRight,
              decoration: const BoxDecoration(
                color: Color(0xff2196f3)
              ),
              child: Container(
                height: 350,
                width: 350,
                decoration: const BoxDecoration(
                  color: Color(0xffffff00)
                ),
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 300,
                  width: 310,
                  decoration: const BoxDecoration(
                    color:  Color(0xffe91e63)
                  ),
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 250,
                    width: 255,
                    decoration: const BoxDecoration(
                        color:  Color(0xffff9800)
                    ),
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: const BoxDecoration(
                          color:  Color(0xff4caf50)
                      ),
                      alignment: Alignment.center,
                      child: Container(
                        height: 150,
                        width: 160,
                        decoration: const BoxDecoration(
                            color:  Color(0xff64ffda)
                        ),
                        alignment: Alignment.topLeft,
                      ),
                    ),
                ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
