import 'package:flutter/material.dart';
import 'package:flutter_color_plugin/flutter_color_plugin.dart';
void main() {
  runApp(const MyApp());
}

// 定义一个 StatelessWidget，名为 MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '我的第一个应用',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(), // 设置主页
    );
  }
}

// 定义一个主页组件
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('主页',style: TextStyle(color: Colors.red),), backgroundColor:ColorUtil.color('#f2f2f2')),
      body: const Center(
        child: Text('Hello, World!',style: TextStyle(color: Colors.teal),),
      ),
    );
  }
}