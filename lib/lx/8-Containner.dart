
import 'package:flutter/material.dart';
void main(List<String>args){
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:  Container(
          transform: Matrix4.rotationZ(0.05),
          margin: EdgeInsets.all(20),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 3,color: Colors.yellow),
              boxShadow: [
                //阴影
                BoxShadow(
                  color: Colors.red.withAlpha(90),
                  blurRadius: 15,
                  offset: Offset(2,2),
                )
              ]
          ),
          child: Text("Hello,Containger",
            style: TextStyle(color: Colors.white,fontSize: 15),),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

