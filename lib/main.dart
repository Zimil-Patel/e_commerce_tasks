import 'package:e_commerce_tasks/5.5/Splitter.dart';
import 'package:e_commerce_tasks/5.5/Wall.dart';
import 'package:e_commerce_tasks/5.5/bolt.dart';
import 'package:flutter/material.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Colors.red,
  // ));
  runApp(const Wall());
}

AppBar addAppBar(
    {required String title,
    Icon? leadIcon,
    required Color textColor,
    required Color bgColor,
    required bool centerTitle}) {
  return AppBar(
    centerTitle: centerTitle,
    backgroundColor: bgColor,
    leading: leadIcon,
    title: Text(
      title,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w500, color: textColor),
    ),
    elevation: 4,
    shadowColor: Colors.black,
  );
}
