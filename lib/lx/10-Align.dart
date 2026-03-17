
import 'package:ccdate/lx/3-%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%84%E4%BB%B6-StatelessWiget%E6%97%A0%E7%8A%B6%E6%80%81.dart';
import 'package:flutter/material.dart';
void main(List<String>args){
  runApp(MainPage());
}
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(

          appBar: AppBar(centerTitle: true,title: Text("pandding"),),

          body: Container(
            decoration: BoxDecoration(color: Colors.amber),
            child:Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 50),
                child:Container(color: Colors.blue,)
            ),
          ),
        )
    );
  }
}
