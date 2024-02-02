import 'package:e_commerce_tasks/5.1/Cube.dart';
import 'package:e_commerce_tasks/5.1/Emoji.dart';
import 'package:e_commerce_tasks/5.1/LetterCover.dart';
import 'package:e_commerce_tasks/5.1/Mashal.dart';
import 'package:e_commerce_tasks/5.1/MissionOfRNW.dart';
import 'package:e_commerce_tasks/5.1/MixUp.dart';
import 'package:e_commerce_tasks/5.1/MyApp.dart';
import 'package:e_commerce_tasks/5.1/OpenedDoor.dart';
import 'package:e_commerce_tasks/5.2/Watch.dart';
import 'package:e_commerce_tasks/5.2/AShadowBtn.dart';
import 'package:e_commerce_tasks/5.2/DarkShadow.dart';
import 'package:e_commerce_tasks/5.2/GradientBtn.dart';
import 'package:e_commerce_tasks/5.2/IndianFlag.dart';
import 'package:e_commerce_tasks/5.2/LaunchButton.dart';
import 'package:e_commerce_tasks/5.2/cssGradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.red,
  ));
  runApp(const CssGradient());
}
