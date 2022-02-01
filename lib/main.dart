import 'package:exam_ui/pages/homa_page.dart';
import 'package:exam_ui/pages/resalt_page.dart';
import 'package:exam_ui/pages/web_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResaultPage(),
      routes: {
        ResaultPage.id: (context)=> ResaultPage(),
        HomePage.id: (context)=> HomePage(),
        WebPage.id: (context)=> WebPage(),
      },
    );
  }
}
