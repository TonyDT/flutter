
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
        appBar: AppBar(
          centerTitle: true,
          title: Text("Center示例"),
        ),
        body: Center(
          child: Container(width: 100,height: 100,color: Colors.blue,
            // alignment: Alignment.center,

            child: Center(child: Text("居中内容",style: TextStyle(color: Colors.white),),
            ),
          ),
        ),
      ),
    );
  }
}
