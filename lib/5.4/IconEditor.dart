import 'package:e_commerce_tasks/main.dart';
import 'package:e_commerce_tasks/util/iconList.dart';
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

Color defaultColor = iconColorList[0];

Icon defaultIcon = displayIconList[0]['icon'];
double displayIconSize = 60;
double listIconSize = 40;


List listIcon = [
  {'name': 'Exit', 'icon':  Icon(Icons.exit_to_app, size: listIconSize, color: defaultColor,)},
  {'name': 'Play', 'icon':  Icon(Icons.play_arrow, size: listIconSize, color: defaultColor)},
  {'name': 'Pause', 'icon':  Icon(Icons.pause, size: listIconSize, color: defaultColor)},
  {'name': 'Stop', 'icon':  Icon(Icons.stop, size: listIconSize, color: defaultColor)},
  {'name': 'Close', 'icon':  Icon(Icons.close, size: listIconSize, color: defaultColor)},
  {'name': 'Delete', 'icon':  Icon(Icons.delete, size: listIconSize, color: defaultColor)},
  {'name': 'Email', 'icon':  Icon(Icons.email, size: listIconSize, color: defaultColor)},
  {'name': 'Book', 'icon':  Icon(Icons.book, size: listIconSize, color: defaultColor)},
  {'name': 'Star', 'icon':  Icon(Icons.star, size: listIconSize, color: defaultColor)},
];

List displayIconList = [
  {'name': 'Exit', 'icon':  Icon(Icons.exit_to_app, size: displayIconSize, color: defaultColor,)},
  {'name': 'Play', 'icon':  Icon(Icons.play_arrow, size: displayIconSize, color: defaultColor)},
  {'name': 'Pause', 'icon':  Icon(Icons.pause, size: displayIconSize, color: defaultColor)},
  {'name': 'Stop', 'icon':  Icon(Icons.stop, size: displayIconSize, color: defaultColor)},
  {'name': 'Close', 'icon':  Icon(Icons.close, size: displayIconSize, color: defaultColor)},
  {'name': 'Delete', 'icon':  Icon(Icons.delete, size: displayIconSize, color: defaultColor)},
  {'name': 'Email', 'icon':  Icon(Icons.email, size: displayIconSize, color: defaultColor)},
  {'name': 'Book', 'icon':  Icon(Icons.book, size: displayIconSize, color: defaultColor)},
  {'name': 'Star', 'icon':  Icon(Icons.star, size: displayIconSize, color: defaultColor)},
];

class _IconEditorState extends State<IconEditor> {


  @override
  Widget build(BuildContext context) {


    
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: const Color(0xffeef0f2),

        appBar: addAppBar(title: 'Icon Editor', textColor: Colors.black, bgColor: Colors.white, centerTitle: true),

        body: SingleChildScrollView(
          child: Column(
            children: [
              displayIcon(icon: defaultIcon, iconColor: defaultColor),
              addTitle('Select Color'),
              addRow(currentList: iconColorList, forRow: "Color"),
              addTitle('Select Icon'),
              addRow(currentList: listIcon, forRow: "Icon"),
            ],
          ),
        ),
      ),
    );
  }


  //main icon dsiplay
  Widget displayIcon({required Icon icon, required Color iconColor}){
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
        ]
      ),
      child: icon
    );
  }

  //title container
  Widget addTitle(String titleName){

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
            ]
        ),
        child: Text(titleName, style: TextStyle(fontSize: 20, color: Colors.grey.shade600, fontWeight: FontWeight.w500),)
    );

  }

  //color row
  Widget addRow({required List currentList, required String forRow}){

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
            ]
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              if(forRow == "Color")
                ...List.generate(currentList.length, (index) => addColorBtn(currentColor: currentList[index]))
              else
                ...List.generate(currentList.length, (index) => addIconBtn(currentIcon: currentList[index]['icon'], index: index))
            ],
          ),
        )
    );

  }

  Widget addColorBtn({required Color currentColor}){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: (){
          setState(() {
            defaultColor = currentColor;
            displayIconList.clear();

              displayIconList.add({'name': 'Exit', 'icon':  Icon(Icons.exit_to_app, size: displayIconSize, color: defaultColor,)});
              displayIconList.add({'name': 'Play', 'icon':  Icon(Icons.play_arrow, size: displayIconSize, color: defaultColor)});
              displayIconList.add({'name': 'Pause', 'icon':  Icon(Icons.pause, size: displayIconSize, color: defaultColor)});
              displayIconList.add({'name': 'Stop', 'icon':  Icon(Icons.stop, size: displayIconSize, color: defaultColor)});
              displayIconList.add({'name': 'Close', 'icon':  Icon(Icons.close, size: displayIconSize, color: defaultColor)});
              displayIconList.add({'name': 'Delete', 'icon':  Icon(Icons.delete, size: displayIconSize, color: defaultColor)});
              displayIconList.add({'name': 'Email', 'icon':  Icon(Icons.email, size: displayIconSize, color: defaultColor)});
              displayIconList.add({'name': 'Book', 'icon':  Icon(Icons.book, size: displayIconSize, color: defaultColor)});
              displayIconList.add({'name': 'Star', 'icon':  Icon(Icons.star, size: displayIconSize, color: defaultColor)});

            listIcon.clear();
            listIcon.add({'name': 'Exit', 'icon':  Icon(Icons.exit_to_app, size: displayIconSize, color: defaultColor,)});
            listIcon.add({'name': 'Play', 'icon':  Icon(Icons.play_arrow, size: displayIconSize, color: defaultColor)});
            listIcon.add({'name': 'Pause', 'icon':  Icon(Icons.pause, size: displayIconSize, color: defaultColor)});
            listIcon.add({'name': 'Stop', 'icon':  Icon(Icons.stop, size: displayIconSize, color: defaultColor)});
            listIcon.add({'name': 'Close', 'icon':  Icon(Icons.close, size: displayIconSize, color: defaultColor)});
            listIcon.add({'name': 'Delete', 'icon':  Icon(Icons.delete, size: displayIconSize, color: defaultColor)});
            listIcon.add({'name': 'Email', 'icon':  Icon(Icons.email, size: displayIconSize, color: defaultColor)});
            listIcon.add({'name': 'Book', 'icon':  Icon(Icons.book, size: displayIconSize, color: defaultColor)});
            listIcon.add({'name': 'Star', 'icon':  Icon(Icons.star, size: displayIconSize, color: defaultColor)});
            print(defaultColor);

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
                ]
            ),
          ),
        ),
      ),
    );
  }

  Widget addIconBtn({required Icon currentIcon, required int index}){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: (){
          setState(() {
            defaultIcon = displayIconList[index]['icon'];
          });
        },
        borderRadius: BorderRadius.circular(100),
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
                ]
            ),

            child: currentIcon,
          ),
        ),
      ),
    );
  }
}
