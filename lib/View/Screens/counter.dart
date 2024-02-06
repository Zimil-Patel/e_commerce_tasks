import 'package:e_commerce_tasks/main.dart';
import 'package:e_commerce_tasks/util/GlobalVariables.dart';
import 'package:flutter/material.dart';

late double width;

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
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
              countlist.length, (index) => addBtn(countlist[index], context))
        ],
      ),
    );
  }

  Widget addBtn(String taskNum, BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
      onPressed: () {
        switch (taskNum) {
          case 'a shadow button':
            Navigator.of(context).pushNamed('/counterApp');
            break;
          case 'css':
            Navigator.of(context).pushNamed('/multi');
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
