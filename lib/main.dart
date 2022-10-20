import 'package:elevate/model/MyColors.dart';
import 'package:elevate/view/BubblePage.dart';
import 'package:elevate/view/HomePage.dart';
import 'package:elevate/view/LoginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<int, Color> colorCodes = {
    50: MyColors.green_color.withOpacity(.1),
    100: MyColors.green_color.withOpacity(.2),
    200: MyColors.green_color.withOpacity(.3),
    300: MyColors.green_color.withOpacity(.4),
    400: MyColors.green_color.withOpacity(.5),
    500: MyColors.green_color.withOpacity(.6),
    600: MyColors.green_color.withOpacity(.7),
    700: MyColors.green_color.withOpacity(.8),
    800: MyColors.green_color.withOpacity(.9),
    900: MyColors.green_color.withOpacity(1),
  };

  late MaterialColor customColor;

  @override
  void initState() {
    super.initState();
    customColor = MaterialColor(0xff2AAC7A, colorCodes);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'podkova', primarySwatch: customColor),
      home: LoginPage(),
    );
  }
}
