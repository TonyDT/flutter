
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
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("线性布局Row"),
        ),
        body: Container(
          width: double.infinity,//充满画布
          height: double.infinity,//充满画布

          decoration: BoxDecoration(color: Colors.amber),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,//两头对其
            // mainAxisAlignment: MainAxisAlignment.spaceAround,//均分模式
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,//环绕模式
            // mainAxisAlignment: MainAxisAlignment.end,//
            // mainAxisAlignment: MainAxisAlignment.start,//
            mainAxisAlignment: MainAxisAlignment.center,//环绕模式
            // crossAxisAlignment: CrossAxisAlignment.start,交叉轴
            // crossAxisAlignment: CrossAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(width: 100,height: 100,color: Colors.blue,),
              // SizedBox(height: 10,),

              Container(width: 100,height: 100,color: Colors.red,margin: EdgeInsets.only(left: 10)),
              // SizedBox(height: 10,),
              Container(width: 100,height: 100,color: Colors.white,margin: EdgeInsets.only(left: 10)),
            ],
          ),
        ),
      ),
    );
  }
}
