import 'package:e_commerce_tasks/main.dart';
import 'package:e_commerce_tasks/util/GlobalVariables.dart';
import 'package:flutter/material.dart';

late double width;

class FiveOne extends StatefulWidget {
  const FiveOne({super.key});

  @override
  State<FiveOne> createState() => _FiveOneState();
}

class _FiveOneState extends State<FiveOne> {
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
              fiveOne.length, (index) => addBtn(fiveOne[index], context))
        ],
      ),
    );
  }

  Widget addBtn(String taskNum, BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
      onPressed: () {
        switch (taskNum) {
          case 'cube':
            Navigator.of(context).pushNamed('/cube');
            break;
          case 'emoji':
            Navigator.of(context).pushNamed('/emoji');
            break;
          case 'letter cover':
            Navigator.of(context).pushNamed('/letterCover');
            break;
          case 'mashal':
            Navigator.of(context).pushNamed('/mashal');
            break;
          case 'mission of rnw':
            Navigator.of(context).pushNamed('/missionOfRnw');
            break;
          case 'mixup':
            Navigator.of(context).pushNamed('/mixUp');
            break;
          case 'my app':
            Navigator.of(context).pushNamed('/myApp');
            break;
          case 'open door':
            Navigator.of(context).pushNamed('/openDoor');
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
