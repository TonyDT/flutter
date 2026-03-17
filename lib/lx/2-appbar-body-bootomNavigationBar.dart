import 'package:flutter/material.dart';


/*
* MaterialApp包裹了整个应用程序形成统一的Material Desigen风格
*scoffold组件可快速搭建页面骨架：appBar\body\bottomNavigationBar等
* Container用来做容器,设置高度height,child用来存放子组件
* Text是用来显示文本的组件
* */
void main(List<String>args){
  // title:展示窗口标题 theme:整体颜色   home:展示窗口主内容
  runApp(MaterialApp(
    title: "flutter",
    theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
    home: Scaffold(appBar:
    AppBar(title:
    Text("头部区域"),backgroundColor: Colors.red,
      centerTitle: true,
    ),
      body: Container(
        child: Center(
          child: Text("中部区域"),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: Center(
          child: Text("底部区域"),
        ),
      ),
    ),
  ));
}
