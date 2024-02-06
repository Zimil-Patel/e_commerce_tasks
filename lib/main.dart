import 'package:e_commerce_tasks/5.1/Cube.dart';
import 'package:e_commerce_tasks/5.1/Emoji.dart';
import 'package:e_commerce_tasks/5.1/LetterCover.dart';
import 'package:e_commerce_tasks/5.1/Mashal.dart';
import 'package:e_commerce_tasks/5.1/MissionOfRNW.dart';
import 'package:e_commerce_tasks/5.1/MixUp.dart';
import 'package:e_commerce_tasks/5.1/MyApp.dart';
import 'package:e_commerce_tasks/5.1/OpenedDoor.dart';
import 'package:e_commerce_tasks/5.2/AShadowBtn.dart';
import 'package:e_commerce_tasks/5.2/CSS.dart';
import 'package:e_commerce_tasks/5.2/DarkShadow.dart';
import 'package:e_commerce_tasks/5.2/GradientBtn.dart';
import 'package:e_commerce_tasks/5.2/IndianFlag.dart';
import 'package:e_commerce_tasks/5.2/LaunchButton.dart';
import 'package:e_commerce_tasks/5.2/Watch.dart';
import 'package:e_commerce_tasks/5.4/Calc.dart';
import 'package:e_commerce_tasks/5.4/DynamicList.dart';
import 'package:e_commerce_tasks/5.4/IconEditor.dart';
import 'package:e_commerce_tasks/5.4/Icons.dart';
import 'package:e_commerce_tasks/5.4/MapList.dart';
import 'package:e_commerce_tasks/5.5/Splitter.dart';
import 'package:e_commerce_tasks/5.5/Wall.dart';
import 'package:e_commerce_tasks/Counter/CounterApp.dart';
import 'package:e_commerce_tasks/Counter/MultiplicationTable.dart';
import 'package:e_commerce_tasks/View/Screens/5.1.dart';
import 'package:e_commerce_tasks/View/Screens/5.2.dart';
import 'package:e_commerce_tasks/View/Screens/5.4.dart';
import 'package:e_commerce_tasks/View/Screens/5.5.dart';
import 'package:e_commerce_tasks/View/Screens/Home.dart';
import 'package:e_commerce_tasks/View/Screens/counter.dart';
import 'package:e_commerce_tasks/5.5/bolt.dart';
import 'package:flutter/material.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Colors.red,
  // ));
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home': (context) => HomePage(),
      '/cube': (context) => Cube(),
      '/emoji': (context) => Emoji(),
      '/letterCover': (context) => LetterCover(),
      '/mashal': (context) => Mashal(),
      '/missionOfRnw': (context) => MissionOfRNW(),
      '/mixUp': (context) => MixUp(),
      '/myApp': (context) => MyApp(),
      '/openDoor': (context) => OpenedDoor(),
      '/aShadowBtn': (context) => AShadowBtn(),
      '/css': (context) => CssGradient(),
      '/darkShadow': (context) => DarkShadow(),
      '/gradientBtn': (context) => GradientBtn(),
      '/indianFlag': (context) => IndianFlag(),
      '/launchBtn': (context) => LaunchBtn(),
      '/watch': (context) => Watch(),
      '/calc': (context) => Calc(),
      '/dynamicList': (context) => DynamicList(),
      '/iconEditor': (context) => IconEditor(),
      '/icon': (context) => IconsColRow(),
      '/mapList': (context) => MapList(),
      '/bolt': (context) => Bolt(),
      '/splitter': (context) => Splitter(),
      '/wall': (context) => Wall(),
      '/counterApp': (context) => CounterApp(),
      '/multi': (context) => MultiplyTable(),
      '/fiveOne': (context) => FiveOne(),
      '/fiveTwo': (context) => FiveTwo(),
      '/count': (context) => Count(),
      '/fiveFour': (context) => FiveFour(),
      '/fiveFive': (context) => FiveFive(),
    },
  ));
}

AppBar addAppBar(
    {required String title,
    Icon? leadIcon,
    required Color textColor,
    required Color bgColor,
    required bool centerTitle,
    double? letterSpace}) {
  return AppBar(
    centerTitle: centerTitle,
    backgroundColor: bgColor,
    leading: leadIcon,
    title: Text(
      title,
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: textColor,
          letterSpacing: letterSpace ?? 0),
    ),
    elevation: 4,
    shadowColor: Colors.black,
  );
}
