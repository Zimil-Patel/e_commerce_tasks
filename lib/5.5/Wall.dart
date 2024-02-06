import 'package:e_commerce_tasks/main.dart';
import 'package:e_commerce_tasks/util/GlobalVariables.dart';
import 'package:flutter/material.dart';

late double width;

class Wall extends StatefulWidget {
  const Wall({super.key});

  @override
  State<Wall> createState() => _WallState();
}

class _WallState extends State<Wall> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: addAppBar(
            title: 'THE WALL',
            textColor: Colors.white,
            bgColor: const Color(0xff212121),
            centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            children: [
              ...List.generate(
                  wallRow.length,
                  (index) =>
                      wallRow[index] % 2 != 0 ? addRow(width / 2) : addRow(width / 3))
            ],
          ),
        ),
      ),
    );
  }

  Widget addRow(double width) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Expanded(flex: 1, child: addContainer()),
            addContainer(width: width, leftMargin: 10, rightMargin: 10),
            Expanded(flex: 1, child: addContainer()),
          ],
        ),
      ),
    );
  }

  Container addContainer(
      {double? leftMargin, double? rightMargin, double? width}) {
    return Container(
      height: 120,
      width: width ?? 0,
      margin: EdgeInsets.only(left: leftMargin ?? 0, right: rightMargin ?? 0),
      color: const Color(0xff5d4037),
    );
  }
}
