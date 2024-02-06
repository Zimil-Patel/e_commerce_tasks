import 'package:e_commerce_tasks/main.dart';
import 'package:e_commerce_tasks/util/GlobalVariables.dart';
import 'package:flutter/material.dart';

late double width;

class FiveFour extends StatefulWidget {
  const FiveFour({super.key});

  @override
  State<FiveFour> createState() => _FiveFourState();
}

class _FiveFourState extends State<FiveFour> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: addAppBar(
          title: 'Flutter Taks',
          textColor: Colors.white,
          bgColor: Colors.black,
          centerTitle: true,
          letterSpace: 5),
      body: ListWheelScrollView(
        itemExtent: 100,
        children: [
          ...List.generate(
              fiveFour.length, (index) => addBtn(fiveFour[index], context))
        ],
      ),
    );
  }

  Widget addBtn(String taskNum, BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
      onPressed: () {
        switch (taskNum) {
          case 'calc':
            Navigator.of(context).pushNamed('/calc');
            break;
          case 'dynamic list':
            Navigator.of(context).pushNamed('/dynamicList');
            break;
          case 'icon editor':
            Navigator.of(context).pushNamed('/iconEditor');
            break;
          case 'icons':
            Navigator.of(context).pushNamed('/icon');
            break;
          case 'maplist':
            Navigator.of(context).pushNamed('/mapList');
            break;
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: width / 1.5,
        child: Text(
          taskNum,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
    );
  }
}
