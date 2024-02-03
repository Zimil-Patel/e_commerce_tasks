import 'package:e_commerce_tasks/main.dart';
import 'package:e_commerce_tasks/util/iconList.dart';
import 'package:flutter/material.dart';

class MapList extends StatefulWidget {
  const MapList({super.key});

  @override
  State<MapList> createState() => _MapListState();
}

class _MapListState extends State<MapList> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,

        //user defined app bar
        appBar: addAppBar(
          title: 'Map',
          leadIcon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          textColor: Colors.white,
          bgColor: const Color(0xff2196f3),
          centerTitle: true,
        ),

        //body of application
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < iconList.length; i++)
                addItem(name: iconList[i]['name'], icon: iconList[i]['icon'])
            ],
          ),
        ),
      ),
    );
  }

  Widget addItem({required String name, required Icon icon}) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      height: 80,
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration:
          const BoxDecoration(color: Colors.white, boxShadow: [BoxShadow()]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          icon
        ],
      ),
    );
  }
}
