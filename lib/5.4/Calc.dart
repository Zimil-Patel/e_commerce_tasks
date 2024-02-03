import 'package:e_commerce_tasks/util/GlobalVariables.dart';
import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //ap bar of application
        appBar: AppBar(
          backgroundColor: const Color(0xff54759e),
          leading: const Icon(
            Icons.menu,
            size: 30,
            color: Colors.white,
          ),
          title: const Text(
            'Calc',
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          elevation: 5,
          shadowColor: Colors.black,
        ),

        //body part of application
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$counter',
                style: const TextStyle(
                    fontSize: 50,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),

              //Btn row 1
              addRowWithBtn('-2', '+2'),
              addRowWithBtn('-4', '+4'),
              addBtn('Clear'),
            ],
          ),
        ),
      ),
    );
  }

  //user defined Btn
  Widget addBtn(String btnName) {
    return Padding(
        padding: const EdgeInsets.only(top: 40),
        child: InkWell(
          onTap: (){
            setState(() {
              if (btnName == "-2") {
                counter = counter - 2;
              } else if (btnName == "+2")
                // ignore: curly_braces_in_flow_control_structures
                counter = counter + 2;
              else if (btnName == "-4")
                // ignore: curly_braces_in_flow_control_structures
                counter = counter - 4;
              else if (btnName == "+4")
                // ignore: curly_braces_in_flow_control_structures
                counter = counter + 4;
              else
                // ignore: curly_braces_in_flow_control_structures
                counter = 0;
            });
          },
          child: Ink(
            height: 60,
            width: 150,
            decoration: BoxDecoration(
                color: const Color(0xff54759e),
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                btnName,
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        )
    );
  }

  //user defined row btns
  Widget addRowWithBtn(String btn1Name, String btn2Name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //RowBtn1
        addBtn(btn1Name),
        //RowBtn2
        addBtn(btn2Name),
      ],
    );
  }
}
