import 'package:e_commerce_tasks/main.dart';
import 'package:e_commerce_tasks/util/iconList.dart';
import 'package:flutter/material.dart';

class IconsColRow extends StatefulWidget {
  const IconsColRow({super.key});

  @override
  State<IconsColRow> createState() => _IconsColRowState();
}

class _IconsColRowState extends State<IconsColRow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: addAppBar(title: 'Icons', textColor: Colors.grey.shade700, bgColor: Colors.white, centerTitle: true),

        body: SingleChildScrollView(
          child: Column(
            children: [
              addRowBox(iconList2, false),
              addRowBox(iconList3, false),
              addRowBox(iconList4, false),
              addRowBox(iconList5, true),
              addRowBox(iconList6, true),
              addRowBox(iconList7, false),
            ],
          ),
        ),
      ),
    );
  }

  Widget addRowBox(List list, bool reverse){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      reverse: reverse,
      child: Row(
        children: [
          ...List.generate(list.length, (index) => addBox(icon: list[index]))
        ],
      ),
    );
  }

  Widget addBox({required Icon icon}){
    return Container(
      height: 120,
      width: 120,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 5),
            spreadRadius: 1,
            blurRadius: 5,
            color: Color(0xffe3e3e3)
          )
        ]
      ),
      child: icon,
    );
  }
}
