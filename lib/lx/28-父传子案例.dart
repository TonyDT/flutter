
import 'package:flutter/material.dart';
void main(List<String>args){
  runApp(MainPage());
}

//父组件
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> _list = [
    "猪肉炖血肠",
    "小鸡炖蘑菇",
    "排骨炖豆角",
    "扣肉",
    "豆腐鱿鱼"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          padding: EdgeInsets.all(10),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          children: List.generate(_list.length, (int index){
            return Child(foodName: _list[index],);
          }),
        ),

      ),
    );
  }
}



//子组件
class Child extends StatefulWidget {
  final String foodName;
  const Child({super.key,required this.foodName});

  @override
  State<Child> createState() => _ChildState();
}

class _ChildState extends State<Child> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child:Text(widget.foodName,style: TextStyle(color: Colors.white,fontSize: 20)),
    );
  }
}
