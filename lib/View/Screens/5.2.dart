import 'package:e_commerce_tasks/main.dart';
import 'package:e_commerce_tasks/util/GlobalVariables.dart';
import 'package:flutter/material.dart';

late double width;

class FiveTwo extends StatefulWidget {
  const FiveTwo({super.key});

  @override
  State<FiveTwo> createState() => _FiveTwoState();
}

class _FiveTwoState extends State<FiveTwo> {
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
              fiveTwo.length, (index) => addBtn(fiveTwo[index], context))
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
            Navigator.of(context).pushNamed('/aShadowBtn');
            break;
          case 'css':
            Navigator.of(context).pushNamed('/css');
            break;
          case 'dark shadow':
            Navigator.of(context).pushNamed('/darkShadow');
            break;
          case 'gradient button':
            Navigator.of(context).pushNamed('/gradientBtn');
            break;
          case 'indian flag':
            Navigator.of(context).pushNamed('/indianFlag');
            break;
          case 'launch button':
            Navigator.of(context).pushNamed('/launchBtn');
            break;
          case 'watch':
            Navigator.of(context).pushNamed('/watch');
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
