import 'package:e_commerce_tasks/main.dart';
import 'package:e_commerce_tasks/util/GlobalVariables.dart';
import 'package:flutter/material.dart';

late double width;
late double height;

class Splitter extends StatefulWidget {
  const Splitter({super.key});

  @override
  State<Splitter> createState() => _WallState();
}

class _WallState extends State<Splitter> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: addAppBar(
              title: 'SPLITTER',
              textColor: Colors.white,
              bgColor: const Color(0xff212121),
              centerTitle: true),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: addVerticalScroller()),
              Expanded(child: addHorizontalScroller())
            ],
          )),
    );
  }

  Widget addVerticalScroller() {
    return Container(
      height: height / 2,
      width: width,
      color: const Color(0xffff9800),
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...List.generate(
                splitterList.length,
                (index) => addContainer(
                    num: splitterList[index],
                    width: width,
                    height: 80,
                    color: const Color(0xffffc107))),
          ],
        ),
      ),
    );
  }

  Widget addHorizontalScroller() {
    return Container(
      height: height / 2,
      width: width,
      color: const Color(0xffff5722),
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
                splitterList.length,
                (index) => addContainer(
                    num: splitterList[index],
                    width: 80,
                    height: height / 2,
                    color: const Color(0xff9e9e9e))),
          ],
        ),
      ),
    );
  }

  Widget addContainer(
      {required int num,
      required double width,
      required double height,
      required Color color}) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(8),
      color: color,
      alignment: Alignment.center,
      child: Text(
        '$num',
        style: const TextStyle(color: Colors.black, fontSize: 14),
      ),
    );
  }
}
