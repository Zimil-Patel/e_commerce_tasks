import 'package:e_commerce_tasks/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bolt extends StatefulWidget {
  const Bolt({super.key});

  @override
  State<Bolt> createState() => _BoltState();
}

class _BoltState extends State<Bolt> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff212121),
          toolbarHeight: 50,
          title: Text(
            'BOLT',
            style: GoogleFonts.nunito(
                fontSize: 28,
                color: Colors.white,
                letterSpacing: 16,
                fontWeight: FontWeight.w100),
          ),
          centerTitle: true,
        ),
        body: Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: yellowPlusOrange,
                )),
            Container(
                color: const Color(0xff212121),
                alignment: Alignment.center,
                child: Icon(
                  Icons.bolt,
                  color: yellowPlusOrange,
                  size: 80,
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: yellowPlusOrange,
                ))
          ],
        ),
      ),
    );
  }
}
