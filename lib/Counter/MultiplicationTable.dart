import 'package:flutter/material.dart';
import '../util/GlobalVariables.dart';

class MultiplyTable extends StatefulWidget {
  const MultiplyTable({super.key});

  @override
  State<MultiplyTable> createState() => _MultiplyTableState();
}

class _MultiplyTableState extends State<MultiplyTable> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SafeArea(
        child: Scaffold(


          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
            title: const Text('Table', style: TextStyle(fontSize: 20, color: Colors.white),),
          ),


          //body part of application
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(numList.length, (index) => addRow(num: numList[index])),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: (){
                        setState(() {
                          numList.clear();
                          count = 1;
                        });
                      },
                      child: Ink(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: const Icon(Icons.delete),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),


          floatingActionButton: Padding(
            padding: const EdgeInsets.all(10.0),
            child: FloatingActionButton(onPressed: (){
              setState(() {
                if(count<=10){
                  numList.add(count);
                  count++;
                }
              });
            },
              shape: const CircleBorder(),
              backgroundColor: Colors.blueAccent,
              child: const Icon(Icons.add),
            ),
          ),
        ),
      ),
    );
  }

  Widget addRow({required int num}){
    return Container(
      margin: const EdgeInsets.only(top: 4),
      height: 25,
      width: 150,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 30),
      decoration: BoxDecoration(
          color: Colors.blueAccent.shade400,
          borderRadius: BorderRadius.circular(5)
      ),
      child: Text('5 * $num = ${5 * num}', style: const TextStyle(color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 18),),
    );
  }
}
