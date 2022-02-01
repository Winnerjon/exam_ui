import 'package:exam_ui/pages/homa_page.dart';
import 'package:exam_ui/pages/web_page.dart';
import 'package:flutter/material.dart';

class ResaultPage extends StatefulWidget {
  static const String id = "/resault_page";

  const ResaultPage({Key? key}) : super(key: key);

  @override
  _ResaultPageState createState() => _ResaultPageState();
}

class _ResaultPageState extends State<ResaultPage> {
  @override
  Widget build(BuildContext context) {
    var x = MediaQuery.of(context).size.width;
    if ((x > 0) && (x <= 600)) return HomePage();

    return WebPage();
  }
}
