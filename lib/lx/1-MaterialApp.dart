import 'package:flutter/material.dart';
void main(List<String>args){
  // title:展示窗口标题 theme:整体颜色   home:展示窗口主内容
  runApp(MaterialApp(
    title: "flutter",
    theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
    home: Scaffold(),
  ));
}
