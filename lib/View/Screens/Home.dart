import 'package:e_commerce_tasks/main.dart';
import 'package:e_commerce_tasks/util/GlobalVariables.dart';
import 'package:flutter/material.dart';

late double width;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              tasks.length, (index) => addBtn(tasks[index], context))
        ],
      ),
    );
  }

  Widget addBtn(String taskNum, BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
      onPressed: () {
        switch (taskNum) {
          case '5.1':
            Navigator.of(context).pushNamed('/fiveOne');
            break;
          case '5.2':
            Navigator.of(context).pushNamed('/fiveTwo');
            break;
          case '5.4':
            Navigator.of(context).pushNamed('/fiveFour');
            break;
          case '5.5':
            Navigator.of(context).pushNamed('/fiveFive');
            break;
          case 'Counter':
            Navigator.of(context).pushNamed('/count');
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
