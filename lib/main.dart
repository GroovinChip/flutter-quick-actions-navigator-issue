import 'package:flutter/material.dart';
import 'package:quick_actions_navigator_issue/page_one.dart';
import 'package:quick_actions_navigator_issue/page_two.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageOne(),
      routes: <String, WidgetBuilder>{
        "/PageTwo": (BuildContext context) => PageTwo(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}