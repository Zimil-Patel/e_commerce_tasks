import 'package:e_commerce_tasks/main.dart';
import 'package:flutter/material.dart';

class IconEditor extends StatefulWidget {
  const IconEditor({super.key});

  @override
  State<IconEditor> createState() => _IconEditorState();
}

List iconColorList = [
  Colors.black,
  Colors.orange,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.grey
];

int selectedIcon = 0;
int selectedColor = 0;

List currentIconList = [
  Icons.exit_to_app,
  Icons.play_arrow,
  Icons.pause,
  Icons.stop,
  Icons.close,
  Icons.delete,
  Icons.email,
  Icons.book,
  Icons.star,
];

class _IconEditorState extends State<IconEditor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffeef0f2),
        appBar: addAppBar(
            title: 'Icon Editor',
            textColor: Colors.black,
            bgColor: Colors.white,
            centerTitle: true),
        body: SingleChildScrollView(
          child: Column(
            children: [
              displayIcon(),
              addTitle('Select Color'),
              addRow(forRow: "Color"),
              addTitle('Select Icon'),
              addRow(forRow: "Icon"),
            ],
          ),
        ),
      ),
    );
  }

  //main icon dsiplay
  Widget displayIcon() {
    return Container(
        height: 240,
        width: double.infinity,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.shade300,
              )
            ]),
        child: Icon(
          currentIconList[selectedIcon],
          size: 70,
          color: iconColorList[selectedColor],
        ));
  }

  //title container
  Widget addTitle(String titleName) {
    return Container(
        height: 50,
        width: double.infinity,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 2, left: 18, right: 18, bottom: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.shade300,
              )
            ]),
        child: Text(
          titleName,
          style: TextStyle(
              fontSize: 20,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w500),
        ));
  }

  //color row
  Widget addRow({required String forRow}) {
    return Container(
        height: 120,
        width: double.infinity,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 2, left: 18, right: 18, bottom: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.shade300,
              )
            ]),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              if (forRow == "Color")
                ...List.generate(
                    iconColorList.length,
                    (index) => addColorBtn(
                        currentColor: iconColorList[index], index: index))
              else
                ...List.generate(
                    currentIconList.length, (index) => addIconBtn(index: index))
            ],
          ),
        ));
  }

  Widget addColorBtn({required Color currentColor, required int index}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedColor = index;
          });
        },
        borderRadius: BorderRadius.circular(100),
        child: Ink(
          height: 80,
          width: 80,
          child: Container(
            decoration: BoxDecoration(
                color: currentColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 0,
                    color: currentColor,
                  )
                ]),
          ),
        ),
      ),
    );
  }

  Widget addIconBtn({required int index}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIcon = index;
          });
        },
        child: Ink(
          height: 80,
          width: 80,
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 0,
                    color: Colors.grey.shade300,
                  )
                ]),
            child: Icon(
              currentIconList[index],
              size: 40,
              color: iconColorList[selectedColor],
            ),
          ),
        ),
      ),
    );
  }
}
