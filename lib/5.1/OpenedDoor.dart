import 'package:flutter/material.dart';

class OpenedDoor extends StatelessWidget {
  const OpenedDoor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child:  Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xff191919),
              centerTitle: true,
              title: const Text('Opened Doors',
                style: TextStyle(fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),),
            ),
            body: Center(
              child: Container(
                height: 180,
                width: 180,
                alignment: Alignment.topCenter,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  border: Border.symmetric(
                    vertical: BorderSide(color: Color(0xffeeeeee), width: 55),
                    horizontal: BorderSide(color: Colors.black, width: 30,),
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}
