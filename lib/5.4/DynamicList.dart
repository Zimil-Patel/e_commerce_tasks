import 'package:e_commerce_tasks/main.dart';
import 'package:e_commerce_tasks/util/GlobalVariables.dart';
import 'package:flutter/material.dart';

class DynamicList extends StatefulWidget {
  const DynamicList({super.key});

  @override
  State<DynamicList> createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {


  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: addAppBar(title: 'Dynamic List', textColor: Colors.white, bgColor: const Color(0xff244d61), centerTitle: true),

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...List.generate(numList.length, (index) => addList(num: numList[index]))
            ],
          ),
        ),

        floatingActionButton: addFloatBtn(),

      ),
    );
  }

  //container
  Widget  addList({required int num}){

    Color boxColor;

    if(num%2 == 0){
      boxColor = const Color(0xff5689c0);
    }
    else{
      boxColor = const Color(0xff75e2ff);
    }


    return Container(
      height: 100,
      width: double.infinity,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(10)
      ),

      child: Text('$num', style: const TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w400),),
    );
  }


  //floating Button row
  Widget addFloatBtn(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 65,
            width: 65,
            child: FloatingActionButton(
              onPressed: (){
                setState(() {
                  counter++;
                  numList.add(counter);
                });
              },
              backgroundColor: const Color(0xff244d61),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
              child: const Icon(Icons.add, color: Colors.white, size: 30,),
            ),
          ),
        ),
        SizedBox(
          height: 65,
          width: 65,
          child: FloatingActionButton(
            onPressed: (){
              setState(() {
                if(counter > 0){
                  counter--;
                  numList.removeLast();
                }
              });
            },
            backgroundColor: const Color(0xff244d61),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Icon(Icons.minimize, color: Colors.white, size: 30,),
            ),
          ),
        )
      ],
    );

  }

}
